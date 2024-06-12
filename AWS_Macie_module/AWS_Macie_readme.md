AWS Macie : It is a fully managed data security and data privacy service and it is used protect sensitive data in your 
AWS environment.
1)resource "aws_macie2_account" is used to create and manage the macie job
-->in this resource there are no mandatory fields so and used some of optional fields like 
-->finding_publishing_frequency and status
2)resource "aws_macie2_classification_job" 
-->in this resource job_type and s3_job_definition block are mandatory variables 
-->job_type : This specifies the type of Macie2 job, which in this case is a "ONE_TIME" job, meaning it will run only once.
-->s3_job_definition : in this block i gave aws account id and array of bucket details
3)For running the application
--> terraform init
--> terraform plan
--> terraform apply
to destory --> terraform destroy
