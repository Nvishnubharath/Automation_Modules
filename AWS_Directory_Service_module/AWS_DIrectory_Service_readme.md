AWS Directory Service : It is a managed service provided by Amazon Web Services (AWS) that makes 
it easier to set up and run directory services in the AWS Cloud.
1)resource "aws_directory_service_directory" it is used to create and manage the directory services in the aws environment 
-->In this resource name and password are mandatory fields and vpc_settings block is optional
-->name : name of the directory service 
-->password : password for the initial user of the directory service
--> vpc_settings : This block specifies the VPC (Virtual Private Cloud) and subnets in which the directory service will be deployed.
2)For running the application
--> terraform init
--> terraform plan
--> terraform apply
to destory --> terraform destroy
