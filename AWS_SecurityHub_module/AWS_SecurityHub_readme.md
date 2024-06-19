AWS Security Hub : It is a service that helps you keep your cloud infrastructure secure.
1)resource "aws_securityhub_account" this resource is used to enable the AWS Security Hub service for your AWS account.
2)data "aws_region" block in the Terraform code is used to retrieve the current AWS region
3)resource "aws_securityhub_standards_subscription" this resource is used to subscribe your AWS account to the 
specified security standards within AWS Security Hub.
--> standards_arn is the mandatory variable in aws_securityhub_standards_subscription resource
4)For running the application
--> terraform init
--> terraform plan
--> terraform apply
to destory --> terraform destroy

