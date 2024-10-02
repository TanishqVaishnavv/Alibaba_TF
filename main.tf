provider "alicloud" {
region      = var.region # Use variable for region
}

locals {
tags = {
Owner     = var.owner      # Use variable for owner 
TestCase   = var.test_case   # Updated to TestCase 
}
}

module “vpc” { 
source   ="./modules/vpc” 
tags     ="local.tags” 
}

module “security_group” { 
source                          ="./modules/security_group” 
vpc_id                          ="module.vpc.vpc_id” 
security_group_tags             ="local.tags” 
bastion_ip                      ="module.bastion.bastion_ip” 
}

module “bastion” { 
source            ="./modules/bastion” 
vpc_id            ="module.vpc.vpc_id” 
vswitch_id        ="module.vpc.vswitch_id” 
security_group_id ="module.security_group.bastion_security_group_id” 
tags              ="local.tags” 
}

output “bastion_ip” { 
value ="module.bastion.bastion_ip” 
}
