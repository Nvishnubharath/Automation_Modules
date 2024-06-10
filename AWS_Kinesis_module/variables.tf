variable "team" {
  description = "Team name"
  type = string
  default = "CloudOps"
}
variable "environment" {
  description = "Environment name"
  type = string
  default = "Practice"
}
variable "owner" {
  description = "Owner name"
  type = string
  default = "Vishnu Bharath Narandas"
}
variable "owner_email" {
  description = "Owner email"
  type = string
  default = "narandasvishnubharath@gmail.com"
}
variable "kinesis_stream_name" {
  description = "The name of the Kinesis Data Stream"
  type        = string
  default     = "kinesis_stream_1"
}

variable "kinesis_stream_shard_count" {
  description = "The number of shards in the Kinesis Data Stream"
  type        = number
  default     = 2
}

variable "kinesis_stream_retention_period" {
  description = "The data retention period in hours for the Kinesis Data Stream"
  type        = number
  default     = 24
}
variable "s3_bucket_name" {
  description = "The name of the S3 bucket for Kinesis Firehose"
  type        = string
  default     = "unique-kinesis-bucket-name"
}
variable "iam_role_name" {
  description = "The name of the IAM role for Kinesis Firehose"
  type        = string
  default     = "firehose_role"
}
variable "iam_role_policy_name" {
  description = "The name of the IAM role policy for Kinesis Firehose"
  type        = string
  default     = "AWSKinesisFirehoseExecutionRole"
}
variable "redshift_cluster_identifier" {
  description = "The identifier for the Redshift cluster"
  type        = string
  default     = "test-cluster"
}

variable "redshift_node_type" {
  description = "The node type for the Redshift cluster"
  type        = string
  default     = "dc2.large"
}

variable "redshift_number_of_nodes" {
  description = "The number of nodes in the Redshift cluster"
  type        = number
  default     = 1
}

variable "redshift_database_name" {
  description = "The name of the database in the Redshift cluster"
  type        = string
  default     = "mydb"
}

variable "redshift_master_username" {
  description = "The username for the Redshift cluster master user"
  type        = string
  default     = "testuser"
}

variable "redshift_master_password" {
  description = "The password for the Redshift cluster master user"
  type        = string
  default     = "T3stPass"
}
variable "kinesis_firehose_name" {
  description = "The name of the Kinesis Firehose delivery stream"
  type        = string
  default     = "kinesis_firehose"
}

variable "kinesis_firehose_redshift_data_table_name" {
  description = "The name of the Redshift table to store the data"
  type        = string
  default     = "test-table"
}

variable "kinesis_firehose_s3_buffering_size" {
  description = "The size of the S3 buffer in MB"
  type        = number
  default     = 10
}

variable "kinesis_firehose_s3_buffering_interval" {
  description = "The interval of the S3 buffer in seconds"
  type        = number
  default     = 400
}

variable "kinesis_firehose_s3_compression_format" {
  description = "The compression format for the S3 data"
  type        = string
  default     = "GZIP"
}