variable "aws_region" {
}

variable "name_prefix" {
}

variable "log_group_name" {
  description = "The name of the CloudWatch log group"
}

variable "log_retention_in_days" {
  description = "Specifies the number of days you want to retain log events in the specified log group"
}

variable "subnet_id" {
  description = "Subnet ID to attach to"
}

# variable "depends_on" {
# }

