variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "security_group_tags" {
  description = "Tags to be applied to the main security group"
  type        = map(string)
}

variable "bastion_ip" {
  description = "Public IP of the bastion for security group rules"
  type        = string
}
