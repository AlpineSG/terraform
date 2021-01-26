variable "instance_count" {
    default = 1
  }
variable "region" {
  default = "us-west-2"
}


variable "web_amis" {
  type = map
  default = {
    #"us-west-2" = "ami-00d65080169180daf"
    "us-west-2" = "ami-0b7dc2d79892b5e49"
  }
}

variable "hub_amis" {
  type = map
  default = {
    "us-west-2" = "ami-0b692295d68a022c0"
  }
}


variable "instance_type" {
  default = "t3.medium"
}

variable "cluster_id" {
  default = "999"
}


variable "environment" {
  default = "test"
}


variable "min_size" {
  default = "1"
}

variable "max_size" {
  default = "10"
}

variable "desired_capacity" {
  default = "1"
}

variable "legacy_network" {
    type    = map
}

variable "forwarding_config" {
  default = {
      80        =   "TCP"
      443       =   "TCP"
  }
}
