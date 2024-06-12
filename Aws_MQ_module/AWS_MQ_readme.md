Amazon MQ : It's managed message broker service provided by Amazon Web Services
1)resource "aws_mq_broker" is used to create and manage the amezon MQ broker
-->In this resource broker_name,engine_type,engine_version,host_instance_type and user block are mandatory variables 
and security_groups, subnet_ids and configaration block are optional variables.
-->broker_name : name of the MQ broker 
-->engine_type : The type of broker engine
-->engine_version : The version of the broker engine
-->host_instance_type : broker's instance type
-->user block : This block defines the username and password for the broker's admin user
-->security_groups : his specifies the security groups to associate with the broker
-->subnet_ids : This specifies the subnets in which to deploy the broker.
-->configuration block : This refers to an configuration resource, which defines the configuration settings for the 
broker.
2)resource "aws_mq_configuration" it is used to create and manage the MQ configuration which defines settings and behaviour 
of MQ broker.
3)resource "aws_security_group" it is used to create and manage a security group and in that i gave inbound traffic rules
to allow TCP traffic on port 8162
4)aws_vpc and aws_subnet resources are used to create VPC and Subnets
5)For running the application
--> terraform init
--> terraform plan
--> terraform apply
to destory --> terraform destroy
