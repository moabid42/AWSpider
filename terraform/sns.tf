// YARA match alerts will be published to this SNS topic.
resource "aws_sns_topic" "traffic_alert" {
  name = "${var.name_prefix}_AWSpider_traffic_alert"
}
