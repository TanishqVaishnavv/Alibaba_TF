output "bastion_security_group_id" {
  value = alicloud_security_group.bastion_sg.id
}

output "instance_security_group_id" {
  value = alicloud_security_group.instance_sg.id
}
