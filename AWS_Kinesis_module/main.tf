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

resource "aws_s3_bucket" "kinesis_bucket" {
  bucket = var.s3_bucket_name
}

resource "aws_iam_role" "firehose_role" {
  name = var.iam_role_name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "firehose_role_policy" {
  name   = var.iam_role_policy_name
  role   = aws_iam_role.firehose_role.name
  policy = data.aws_iam_policy_document.firehose_role_policy_document.json
}

data "aws_iam_policy_document" "firehose_role_policy_document" {
  statement {
    effect = "Allow"
    actions = [
      "kinesis:DescribeStream",
      "kinesis:GetShardIterator",
      "kinesis:GetRecords",
      "kinesis:ListShards",
      "logs:PutLogEvents"
    ]
    resources = ["*"]
  }

  
}

resource "aws_redshift_cluster" "test_cluster" {
  cluster_identifier      = var.redshift_cluster_identifier
  node_type              = var.redshift_node_type
  number_of_nodes        = var.redshift_number_of_nodes
  database_name          = var.redshift_database_name
  master_username        = var.redshift_master_username
  master_password        = var.redshift_master_password
}

resource "aws_kinesis_firehose_delivery_stream" "kinesis_firehose" {
  name        = var.kinesis_firehose_name
  destination = "redshift"

  redshift_configuration {
    role_arn           = aws_iam_role.firehose_role.arn
    cluster_jdbcurl    = "jdbc:redshift://${aws_redshift_cluster.test_cluster.endpoint}/${aws_redshift_cluster.test_cluster.database_name}"
    username           = var.redshift_master_username
    password           = var.redshift_master_password
    data_table_name    = var.kinesis_firehose_redshift_data_table_name

    s3_configuration {
      role_arn           = aws_iam_role.firehose_role.arn
      bucket_arn         = aws_s3_bucket.kinesis_bucket.arn
      buffering_size     = var.kinesis_firehose_s3_buffering_size
      buffering_interval = var.kinesis_firehose_s3_buffering_interval
      compression_format = var.kinesis_firehose_s3_compression_format
    }
  }
}
