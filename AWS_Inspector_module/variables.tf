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
variable "resource_group_name" {
  description = "Name of the AWS Inspector resource group"
  type        = string
  default     = "my-assessment-group"
}
variable "rules_package_arns" {
  description = "List of AWS Inspector rules package ARNs"
  type        = list(string)
  default = [
    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-PmNV0Tcd",
    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-R01qwB5Q",
    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-gEjTy7T7",
    "arn:aws:inspector:us-east-1:316112463485:rulespackage/0-rExsr2X8"
  ]
}
variable "duration" {
    description = "duration"
    type = number
    default = 3600
  
}
variable "assessment_target_name" {
  description = "Name of the AWS Inspector assessment target"
  type        = string
  default     = "my-assessment-target"
}

variable "assessment_template_name" {
  description = "Name of the AWS Inspector assessment template"
  type        = string
  default     = "my-assessment-template"
}