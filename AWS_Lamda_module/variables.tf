
variable "aws_region" {
  description = "AWS region to create resources in"
  type        = string
}

variable "iam_role_name" {
  description = "Name of the IAM role for the Lambda function"
  type        = string
  
}

variable "iam_policy_name" {
  description = "Name of the IAM policy for the Lambda function"
  type        = string
  
}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
  
}
 variable "lambda_function_runtime" {
    description = "Runtime of the Lambda function "
    type        = string
    
   
}

variable "path_to_store_zipfile" {
  description = "Path to Store zip file"
  type        = string
  
}

variable "file_Name" {
    description = "File Name"
    type        = string
    
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

