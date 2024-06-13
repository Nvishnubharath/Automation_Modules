variable "directory_service_name" {
    description = "name of the directory service name"
    type = string
  
}
variable "directory_service_password" {
    description = "name of the directory service password"
    type = string
  
}
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}
variable "subnet1_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}
variable "subnet1_availability_zone" {
  description = "vpc availability zone for the VPC"
  type        = string
}
variable "subnet2_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}
variable "subnet2_availability_zone" {
  description = "vpc availability zone for the VPC"
  type        = string
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
