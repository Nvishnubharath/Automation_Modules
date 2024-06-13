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
variable "aws_macie2_account_finding_publishing_frequency" {
  description = "aws macie2 account finding publishing frequency"
  type = string
  
}
variable "aws_macie2_account_status" {
  description = "aws macie2 account status"
  type = string
  
}
variable "classification_job1_name" {
  description = "classification job1 name"
  type = string
  
}
variable "classification_job1_job_type" {
  description = "classification job1 job type"
  type = string
  
}

variable "classification_job1_account_id" {
  description = "classification job1 account id"
  type = string
}
variable "classification_job1_buckets" {
  description = "classification job1 buckets"
  type = list(string)
  
}
