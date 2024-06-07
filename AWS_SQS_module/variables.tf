variable "sqs_queue_1_name" {
    type        = string
    description = "Name of the SQS queue 1"
    default = "sqs_queue_1"
}
variable "sqs_queue_1_delay_seconds" {
    type        = number
    description = "delay seconds of the SQS queue 1"
    default = 10
}
variable "sqs_queue_1_max_message_size" {
    type        = number
    description = "max message size of the SQS queue 1"
    default = 2048
}
variable "sqs_queue_1_message_retention_seconds" {
    type        = number
    description = "message retention seconds of the SQS queue 1"
    default = 86400
}
variable "sqs_queue_1_receive_wait_time_seconds" {
    type        = number
    description = "receive wait time seconds of the SQS queue 1"
    default = 10
}
variable "sqs_queue_1_sqs_managed_sse_enabled" {
    type        = bool
    description = "sqs_managed_sse_enabled of the SQS queue 1"
    default = true
  
}
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
