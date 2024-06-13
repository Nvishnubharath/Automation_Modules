variable "broker_name" {
  description = "The name of the Amazon MQ broker"
  type        = string
}

variable "engine_type" {
  description = "The type of broker engine"
  type        = string
}

variable "engine_version" {
  description = "The version of the broker engine"
  type        = string
}

variable "host_instance_type" {
  description = "The broker's instance type"
  type        = string
}


variable "configuration_name" {
  description = "The name of the configuration"
  type        = string
}

variable "configuration_description" {
  description = "The description of the configuration"
  type        = string
}

variable "username" {
  description = "The username for the broker user"
  type        = string
}

variable "password" {
  description = "The password for the broker user"
  type        = string
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
}
variable "aws_security_group_name_prefix" {
    description = "The prefix for the security group name"
    type = string
  
}
variable "team" {
  description = "Team name"
  type = string
}
variable "environment" {
  description = "Environment name"
  type = string
}
variable "owner" {
  description = "Owner name"
  type = string
}
variable "owner_email" {
  description = "Owner email"
  type = string
}
