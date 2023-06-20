provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = "~> 1.4.0"
}

module "flow" {
  source = "./modules/flow-subnet"

  log_group_name        = "${var.log_group_name}"
  log_retention_in_days = "${var.log_retention_in_days}"
  subnet_id             = "${var.subnet_id}"
}

module "lambda" {
  source = "./modules/lambda"

  target_log_group_name = "${module.flow.log_group_name}"
}
