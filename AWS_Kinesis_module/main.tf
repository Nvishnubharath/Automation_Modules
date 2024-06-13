resource "aws_kinesis_stream" "kinesis_stream_1" {
  name             = var.kinesis_stream_name
  shard_count      = var.kinesis_stream_shard_count
  retention_period = var.kinesis_stream_retention_period

  tags = {
    team        = var.team
    environment = var.environment
    owner       = var.owner
    owner_email = var.owner_email
    creation_date = timestamp()
  }
}

data "aws_caller_identity" "current" {}

resource "aws_kinesis_resource_policy" "resource_Policy" {
  resource_arn = aws_kinesis_stream.kinesis_stream_1.arn

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "writestatement",
      "Effect": "Allow",
      "Principal": {
        "AWS": "${data.aws_caller_identity.current.account_id}"
      },
      "Action": [
        "kinesis:DescribeStreamSummary",
        "kinesis:ListShards",
        "kinesis:PutRecord",
        "kinesis:PutRecords"
      ],
      "Resource": "${aws_kinesis_stream.kinesis_stream_1.arn}"
    }
  ]
}
EOF
}

resource "aws_kinesis_stream_consumer" "kinesis_consumer1" {
  name       = var.kinesis_consumer1_name
  stream_arn = aws_kinesis_stream.kinesis_stream_1.arn
}
