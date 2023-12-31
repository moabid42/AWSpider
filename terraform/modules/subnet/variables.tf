variable "log_group_name" {
  description = "The name of the CloudWatch log group"
  default     = "/hg-mouad/darknet"
}

variable "log_retention_in_days" {
  description = "Specifies the number of days you want to retain log events in the specified log group"
  default     = 90
}

variable "subnet_id" {
  description = "Subnet ID to attach to"
}
