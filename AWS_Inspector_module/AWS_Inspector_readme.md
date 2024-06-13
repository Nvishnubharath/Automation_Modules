AWS Inspector : It is a security assessment service that helps you identify security vulnerabilities and potential 
threats in your AWS resources.
1)resource "aws_inspector_resource_group" is used group the resources that you want to assess for 
security vulnerabilities.
2)resource "aws_inspector_assessment_target"  
-->Inthis resource name is mandatory field and resource_group_arn is optional variable
-->name : name of the AWS Inspector assessment target
-->resource_group_arn : This variable associates the assessment target with the resource group defined
3)resource "aws_inspector_assessment_template" it is used to define the configuration for a security assessment that 
will be performed on the resources in the associated assessment target.
-->In this resource name,target_arn,duration and rules_package_arns are the mandatory variables
-->name : The name of the assessment template
-->target_arn : This variable in the resource references the ARN of the aws_inspector_assessment_target resource. 
This associates the assessment template with the specific set of resources that will be assessed.
-->duration : The duration of the inspector run
-->rules_package_arns : This variable allows you to specify the ARNs of the AWS Inspector rules packages that will be used 
to assess the resources and it define the specific security checks and controls that will be applied during the assessment.
These are the rules to be used during the run.
4)For running the application
--> terraform init
--> terraform plan
AWS Inspector is paid service so i did'nt check terraform apply.
