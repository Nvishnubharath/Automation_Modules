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



resource "aws_iam_role_policy_attachment" "attach_iam_policy_to_iam_role" {
  role        = aws_iam_role.lambda_role.name
  policy_arn  = aws_iam_policy.iam_policy_for_lambda.arn
}


data "archive_file" "zip_the_python_code" {
 type        = "zip"
 source_dir  = var.path_to_store_zipfile
 output_path = "${var.path_to_store_zipfile}/${var.file_Name}.zip"
}

resource "aws_lambda_function" "terraform_lambda_func" {
 filename                       = "${var.path_to_store_zipfile}/${var.file_Name}.zip"
 function_name                  = var.lambda_function_name
 role                           = aws_iam_role.lambda_role.arn
 handler                        = "helloworld.lambda_handler"
 runtime                        = var.lambda_function_runtime
 depends_on                     = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
}