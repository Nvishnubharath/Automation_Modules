variable "aws_region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "iam_role_name" {
  description = "Name of the IAM role for the Lambda function"
  type        = string
  default     = "terraform_aws_lambda_role"
}

variable "iam_policy_name" {
  description = "Name of the IAM policy for the Lambda function"
  type        = string
  default     = "aws_iam_policy_for_terraform_aws_lambda_role"
}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "vishnu-Lambda-Function"
}
 variable "lambda_function_runtime" {
    description = "Runtime of the Lambda function "
    type        = string
    default     = "python3.8"
   
}
