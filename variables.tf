variable "aws_region" {
  default = "eu-central-1"
}

variable "name_prefix" {
  default = "hg-"
}

variable "log_group_name" {
  description = "The name of the CloudWatch log group"
  default     = "/AWSpider/darksubnet"
}

variable "log_retention_in_days" {
  description = "Specifies the number of days you want to retain log events in the specified log group"
  default     = 90
}

variable "subnet_id" {
  description = "Subnet ID to attach to"
  default = "subnet-0bcfc87ba1e558c1b" # test-darknet subnetID
}
