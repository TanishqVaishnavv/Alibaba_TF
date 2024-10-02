resource "alicloud_vpc" "main" {
  name       = "my-vpc"
  cidr_block = "10.0.0.0/16"

  tags = var.tags
}

resource "alicloud_vswitch" "main" {
  vpc_id            = alicloud_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "cn-hangzhou-b"  # Change to your preferred AZ

  tags = var.tags
}

resource "alicloud_vswitch" "private" {
  vpc_id            = alicloud_vpc.main.id
  cidr_block        = "10.0.2.0/24"  # New subnet for future instances
  availability_zone = "cn-hangzhou-b"  # Change to your preferred AZ

  tags = var.tags
}
