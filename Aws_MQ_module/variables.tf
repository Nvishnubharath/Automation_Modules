variable "broker_name" {
  description = "The name of the Amazon MQ broker"
  type        = string
  default     = "broker_1"
}

variable "engine_type" {
  description = "The type of broker engine"
  type        = string
  default     = "ActiveMQ"
}

variable "engine_version" {
  description = "The version of the broker engine"
  type        = string
  default     = "5.17.6"
}

variable "host_instance_type" {
  description = "The broker's instance type"
  type        = string
  default     = "mq.t2.micro"
}


variable "configuration_name" {
  description = "The name of the configuration"
  type        = string
  default     = "broker_1_config"
}

variable "configuration_description" {
  description = "The description of the configuration"
  type        = string
  default     = "Broker 1 MQ Configuration"
}

variable "username" {
  description = "The username for the broker user"
  type        = string
  default     = "broker1"
}

variable "password" {
  description = "The password for the broker user"
  type        = string
  default     = "broker@12345678"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}
variable "aws_security_group_name_prefix" {
    description = "The prefix for the security group name"
    type = string
    default = "broker_1_sg"
  
}
