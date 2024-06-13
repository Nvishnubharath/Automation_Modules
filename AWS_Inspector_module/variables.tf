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
variable "resource_group_name" {
  description = "Name of the AWS Inspector resource group"
  type        = string
}
variable "rules_package_arns" {
  description = "List of AWS Inspector rules package ARNs"
  type        = list(string)

}
variable "duration" {
    description = "duration"
    type = number  
}
variable "assessment_target_name" {
  description = "Name of the AWS Inspector assessment target"
  type        = string
}

variable "assessment_template_name" {
  description = "Name of the AWS Inspector assessment template"
  type        = string
}
