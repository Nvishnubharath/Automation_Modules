resource "aws_sqs_queue" "sqs_queue_1" {
  name                      = var.sqs_queue_1_name
  delay_seconds             = var.sqs_queue_1_delay_seconds
  max_message_size          = var.sqs_queue_1_max_message_size
  message_retention_seconds = var.sqs_queue_1_message_retention_seconds
  receive_wait_time_seconds = var.sqs_queue_1_receive_wait_time_seconds
 
  sqs_managed_sse_enabled = var.sqs_queue_1_sqs_managed_sse_enabled

  tags={
    team=var.team
    environment=var.environment
    owner=var.owner
    owner_email=var.owner_email
    creation_date=timestamp()
  }
}

resource "aws_sqs_queue_policy" "example_queue_policy" {
  queue_url = aws_sqs_queue.sqs_queue_1.url

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "sqs_queue_1-policy",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "${data.aws_caller_identity.current.account_id}"
      },
      "Action": [
        "sqs:SendMessage",
        "sqs:ReceiveMessage"
      ],
      "Resource": "${aws_sqs_queue.sqs_queue_1.arn}"
    }
  ]
}
POLICY
}

data "aws_caller_identity" "current" {}
