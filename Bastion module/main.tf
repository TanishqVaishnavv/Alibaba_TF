resource "alicloud_instance" "bastion" {
  instance_name     = "bastion-host"
  image_id          = "ubuntu_20_04_x64_20G_alibase_20230329.vhd" # Replace with your preferred image
  instance_type     = "ecs.t5-lc2m1.nano"
  vswitch_id        = var.vswitch_id
  security_groups   = [var.security_group_id]

  internet_max_bandwidth_out = 10

  tags                   = var.tags
}
