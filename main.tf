provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = "~> 1.4.0"
}

module "flow_subnet" {
  source = "./modules/flow-subnet"

  log_group_name        = "${var.log_group_name}"
  log_retention_in_days = "${var.log_retention_in_days}"
  subnet_id             = "${var.subnet_id}"
}

# module "flow_eni" {
#   source = "./modules/flow-eni"

#   log_group_name        = "${var.log_group_name}"
#   log_retention_in_days = "${var.log_retention_in_days}"
#   eni_id                = "${var.eni_id}"
# }

# module "flow_vpc" {
#   source = "./modules/flow-vpc"

#   log_group_name        = "${var.log_group_name}"
#   log_retention_in_days = "${var.log_retention_in_days}"
#   vpc_id                = "${var.vpc_id}"
# }