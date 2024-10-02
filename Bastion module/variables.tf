variable "vpc_id" {
description     = "ID of the VPC"
type            = string
}

variable "vswitch_id" {
description     = "ID of the VSwitch"
type            = string
}

variable "security_group_id" {
description     = "ID of the Security Group"
type            = string
}

variable "tags" {
description     = "Tags to be applied to the bastion host"
type            = map(string)
}
