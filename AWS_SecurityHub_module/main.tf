resource "aws_securityhub_account" "securityhub1" {}

resource "aws_securityhub_action_target" "securityhub_action1" {
  depends_on  = [aws_securityhub_account.securityhub1]
  name        = var.securityhub_action_name
  identifier  = var.securityhub_action_identifier
  description = var.securityhub_action_description
}








