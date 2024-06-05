provider "aws" {
  region = var.aws_region
}
resource "aws_iam_role" "lambda_role" {
 name   = var.iam_role_name
 assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

# IAM policy for logging from a lambda

resource "aws_iam_policy" "iam_policy_for_lambda" {

  name         = var.iam_policy_name
  path         = "/"
  description  = "AWS IAM Policy for managing aws lambda role"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "arn:aws:logs:*:*:*",
      "Effect": "Allow"
    }
  ]
}
EOF
}

# Policy Attachment on the role.

resource "aws_iam_role_policy_attachment" "attach_iam_policy_to_iam_role" {
  role        = aws_iam_role.lambda_role.name
  policy_arn  = aws_iam_policy.iam_policy_for_lambda.arn
}
# Generates an archive from content, a file, or a directory of files.

data "archive_file" "zip_the_python_code" {
 type        = "zip"
 source_dir  = "${path.module}/python"
 output_path = "${path.module}/python/helloworld.zip"
}

# Create a lambda function
resource "aws_lambda_function" "terraform_lambda_func" {
 filename                       = "${path.module}/python/helloworld.zip"
 function_name                  = var.lambda_function_name
 role                           = aws_iam_role.lambda_role.arn
 handler                        = "helloworld.lambda_handler"
 runtime                        = var.lambda_function_runtime
 depends_on                     = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
}