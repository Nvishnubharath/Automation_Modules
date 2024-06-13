AWS kinesis : It helps us to collect, process, and analyze real-time streaming data. 
1)resource "aws_kinesis_stream" in Terraform is used to define and manage an Amazon Kinesis data stream in your AWS environment.
-->In this resource name is mandatory variable and shard_count,retention_period are optional variables
-->name : name of the aws_kinesis_stream
-->shard_count : The number of shards in the Kinesis Data Stream
-->retention_period : The data retention period in hours for the Kinesis Data Stream
2)data "aws_caller_identity" : This block is used to get the aws account id
3)resource "aws_kinesis_resource_policy" this is used to give the resource policy for the aws_kinesis_stream
4)resource "aws_kinesis_stream_consumer" this is used to create and manage kinesis consumer and it is used to consume data from the kinesis stream.
-->in this resource name,stream_arn are mandatory variables
-->name : Name of the stream consumer.
-->stream_arn : Amazon Resource Name (ARN) of the data stream the consumer is registered with.
5)For running the application
--> terraform init
--> terraform plan
--> terraform apply
to destory --> terraform destroy
