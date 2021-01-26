
variable "cidr_prefix" {
    type = string
}

variable "name" {
    type = string
}

variable "all-internal" {
    type = list
    default = [ "10.0.0.0/8" ]
}

variable "ALL-NETWORKS" {
    type = list
    default = [ "0.0.0.0/0" ]
}

variable "VPN-SERVER-CIDR-block" {
    type = list
    default = [ "10.18.0.40/32" ]
}
