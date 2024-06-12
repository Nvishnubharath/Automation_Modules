AWS Lamda : AWS Lambda is a serverless computing service provided by Amazon Web Services (AWS) that allows you to run our application without managing any infrastructure.
1)In main.tf file created a resource called aws_lamda_function which is used to create and manage the aws lamda function.
-->in this resource function_name and role are mandatory varialbes and handler,runtime,depends_on are optional variables.
-->function_name : name of the lamda function
-->role : assigned a iam role arn and The role provides the function's identity and access to AWS services and resources.
-->handler : Function entrypoint for our code.
-->runtime : we need to choose the language we need to run
2)archive_file data source is used to convert the file to a zip file
3)aws_iam_role, aws_iam_policy and aws_iam_role_policy_attachment resources are used to assign the role to aws_lamda_function.
4)For running the application
--> terraform init
--> terraform plan
--> terraform apply
to destory --> terraform destroy


