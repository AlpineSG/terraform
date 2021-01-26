
data "aws_availability_zones" "all" {}


### Creating EC2 instance
resource "aws_instance" "hub" {
  lifecycle {
    ignore_changes = all
#    prevent_destroy = true
  }
    ami                          = lookup(var.hub_amis,var.region)
    vpc_security_group_ids       = [var.legacy_network.hub_sg_id, var.legacy_network.sql_sg_id, var.legacy_network.legacy_admin_sg_id]
    subnet_id                    = var.legacy_network.production_subnet_id
    associate_public_ip_address  = true
    ebs_optimized                = true
    get_password_data            = false
    hibernation                  = false
    instance_type                = var.instance_type
    monitoring                   = false
    source_dest_check            = true

    tags                         = {
        "Name"                = "hub-${var.cluster_id}"
        "ec_ec2_cluster_id"   = "C${var.cluster_id}"
        "ec_ec2_cluster_role" = "hub"
        "ec_environment"      = var.environment
    }
    tenancy                      = "default"
    volume_tags                  = {
        "DRIVE_BACKUP"        = "NONE"
        "Name"                = "hub-${var.cluster_id}"
        "ec_ec2_cluster_id"   = "C${var.cluster_id}"
        "ec_ec2_cluster_role" = "hub"
        "ec_environment"      = var.environment
    }


    credit_specification {
        cpu_credits = "standard"
    }

    ebs_block_device {
        delete_on_termination = false
        device_name           = "xvdb"
        encrypted             = false
        volume_size           = 100
        volume_type           = "gp3"
    }


    metadata_options {
        http_endpoint               = "enabled"
        http_put_response_hop_limit = 1
        http_tokens                 = "optional"
    }

    root_block_device {
        delete_on_termination = false
        encrypted             = false
        volume_size           = 100
        volume_type           = "gp3"
    }

    timeouts {}
}

## Creating Launch Configuration
resource "aws_launch_configuration" "lc" {
  name                   = "C${var.cluster_id}-lc"
  image_id               = lookup(var.web_amis,var.region)
  instance_type          = var.instance_type
  security_groups        = [var.legacy_network.web_sg_id, var.legacy_network.legacy_admin_sg_id]
  ebs_optimized          = true
  user_data     = <<EOF
net use z: /delete /Y
net use z: \\10.18.0.250\WebServerStartup
z:\WebServerInit_v3.bat "10.18.0.250" awswest2aD9-private.e-courier.biz
net use z: /delete /Y
 EOF
  root_block_device {
      delete_on_termination = true
      encrypted             = false
      volume_size           = 100
      volume_type           = "gp2"
    }
}

## Creating AutoScaling Group
resource "aws_autoscaling_group" "asg" {
  name = "C${var.cluster_id}-asg"
  launch_configuration = aws_launch_configuration.lc.id
  vpc_zone_identifier = [var.legacy_network.production_subnet_id]
  min_size = var.min_size
  max_size = var.max_size
  desired_capacity = var.desired_capacity
  target_group_arns = [aws_lb_target_group.tg.arn]
  health_check_type = "EC2"
  tag {
    key = "Name"
    value = "C${var.cluster_id}-asg"
    propagate_at_launch = true
  }
}

### Creating NLB
resource "aws_lb" "nlb" {
  name = "C${var.cluster_id}-nlb"
  load_balancer_type = "network"
  subnets = [var.legacy_network.production_subnet_id]
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn       = aws_lb.nlb.arn
      port                = "80"
      protocol            = "TCP"
      default_action {
        target_group_arn = aws_lb_target_group.tg.arn
        type             = "forward"
      }
}
resource "aws_lb_target_group" "tg" {
    name                  = "C${var.cluster_id}-tg"
    port                  = 80
    protocol              = "TCP"
  vpc_id                  = var.legacy_network.legacy_network_vpc_id
  target_type             = "instance"
  deregistration_delay    = 90
health_check {
    interval            = 30
    port                = 80
    protocol            = "HTTP"
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }
  tags = {
    Environment = "test"
  }
 }
# resource "aws_lb_target_group_attachment" "tga1" {
#     target_group_arn  = aws_lb_target_group.tg.arn
#     port              = 80
#   target_id           = "i-02db2f27f421fd3ac"
# }
