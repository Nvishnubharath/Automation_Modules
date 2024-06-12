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
variable "aws_macie2_account_finding_publishing_frequency" {
  description = "aws macie2 account finding publishing frequency"
  type = string
  default = "FIFTEEN_MINUTES" 
  
}
variable "aws_macie2_account_status" {
  description = "aws macie2 account status"
  type = string
  default = "ENABLED"
  
}
variable "classification_job1_name" {
  description = "classification job1 name"
  type = string
  default = "sensitive-data-classification-job"
  
}
variable "classification_job1_job_type" {
  description = "classification job1 job type"
  type = string
  default = "ONE_TIME" 
  
}

variable "classification_job1_account_id" {
  description = "classification job1 account id"
  type = string
  default = "ACCOUNT ID"
}
variable "classification_job1_buckets" {
  description = "classification job1 buckets"
  type = list(string)
  default = ["sensitive-data-bucket-name"]
}