resource "alicloud_security_group" "bastion_sg" {
  name = "bastion-security-group"

  tags = var.security_group_tags
}

resource "alicloud_security_group_rule" "allow_ssh_from_bastion" {
  type              = "ingress"
  security_group_id = alicloud_security_group.bastion_sg.id
  ip_protocol       = "tcp"
  port_range        = "22"
  source_cidr_ip    = var.bastion_ip  # Allow SSH access from the bastion
}

resource "alicloud_security_group" "instance_sg" {
  name = "instance-access-security-group"

  tags = var.security_group_tags
}

resource "alicloud_security_group_rule" "allow_ssh_to_bastion" {
  type              = "ingress"
  security_group_id = alicloud_security_group.instance_sg.id
  ip_protocol       = "tcp"
  port_range        = "22"
  source_cidr_ip    = var.bastion_ip  # Allow instances to SSH to the bastion
}
