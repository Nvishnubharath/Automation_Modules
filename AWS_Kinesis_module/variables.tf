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
variable "kinesis_consumer1_name" {
  description = "The name of the Kinesis Consumer"
  type        = string
  default     = "kinesis_consumer1"
}

