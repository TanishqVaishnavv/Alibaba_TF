output "vpc_id" {
  value = alicloud_vpc.main.id
}

output "vswitch_id" {
  value = alicloud_vswitch.main.id
}

output "private_vswitch_id" {
  value = alicloud_vswitch.private.id
}
