AWS SQS : Simple Queue Service is a fully managed message queuing service.
1)resource "aws_sqs_queue"  is used to cerate a SQS queue 
-->in this resource there are no mandatory fields so and used some of optional fields like 
-->name : name of the SQS queue
-->delay_seconds : The time in seconds that the delivery of all messages in the queue will be delayed
-->max_message_size : size of massage in bytes
-->message_retention_seconds : The number of seconds Amazon SQS retains a message
-->sqs_managed_sse_enabled : Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys.
2)resource "aws_sqs_queue_policy" Allows you to set a policy of an SQS Queue.
3)aws_caller_identity data source is used to get the information about current aws user.
For running the application
--> terraform init
--> terraform plan
--> terraform apply
to destory --> terraform destroy
