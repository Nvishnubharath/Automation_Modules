variable "team" {
  description = "Team name"
  type = string
}
variable "environment" {
  description = "Environment name"
  type = string
}
variable "owner" {
  description = "Owner name"
  type = string
}
variable "owner_email" {
  description = "Owner email"
  type = string
}
variable "kinesis_stream_name" {
  description = "The name of the Kinesis Data Stream"
  type        = string
}

variable "kinesis_stream_shard_count" {
  description = "The number of shards in the Kinesis Data Stream"
  type        = number
}

variable "kinesis_stream_retention_period" {
  description = "The data retention period in hours for the Kinesis Data Stream"
  type        = number
}
variable "kinesis_consumer1_name" {
  description = "The name of the Kinesis Consumer"
  type        = string
}

