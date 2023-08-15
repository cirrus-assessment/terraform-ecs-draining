#tfsec:ignore:AWS016
resource "aws_sns_topic" "topic" {
  name = format("%s-topic", element((regex("((([[:alnum:]]+-){3})[[:alnum:]]+)",var.autoscaling_group_name)), 0))
  tags = var.tags
}
