variable "sqs_queue_1_name" {
    type        = string
    description = "Name of the SQS queue 1"
}
variable "sqs_queue_1_delay_seconds" {
    type        = number
    description = "delay seconds of the SQS queue 1"
}
variable "sqs_queue_1_max_message_size" {
    type        = number
    description = "max message size of the SQS queue 1"
}
variable "sqs_queue_1_message_retention_seconds" {
    type        = number
    description = "message retention seconds of the SQS queue 1"
}
variable "sqs_queue_1_receive_wait_time_seconds" {
    type        = number
    description = "receive wait time seconds of the SQS queue 1"
}
variable "sqs_queue_1_sqs_managed_sse_enabled" {
    type        = bool
    description = "sqs_managed_sse_enabled of the SQS queue 1"
  
}
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
