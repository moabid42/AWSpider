variable "name" {
  description = "A unique name for your Lambda Function."
  default     = "darknet_cloudwatch_handler"
}

variable "role_name" {
  description = "A unique name for your Lambda Function."
  default     = "darknet_cloudwatch_handler_role"
}

variable "log_retention_in_days" {
  description = "Specifies the number of days you want to retain log events in lambda function log group"
  default     = 90
}

variable "target_log_group_name" {
  description = "The log group name to monitor."
}

variable "notification_message" {
  description = "Notification message to send when threat identified"
  default     = "Test test"
}

variable "slack_notification_url" {
  description = "URL for slack notifications."
  default     = ""
}
