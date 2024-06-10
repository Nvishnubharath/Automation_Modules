variable "directory_service_name" {
    description = "name of the directory service name"
    type = string
    default = "directoryservice.auto1"
  
}
variable "directory_service_password" {
    description = "name of the directory service password"
    type = string
    default = "directoryservice@123"
  
}
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
variable "subnet1_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.1.0/24"
}
variable "subnet1_availability_zone" {
  description = "vpc availability zone for the VPC"
  type        = string
  default     = "us-east-1a"
}
variable "subnet2_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.2.0/24"
}
variable "subnet2_availability_zone" {
  description = "vpc availability zone for the VPC"
  type        = string
  default     = "us-east-1b"
}