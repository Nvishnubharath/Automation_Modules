variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "cis_standards_version" {
  description = "The version of the CIS AWS Foundations Benchmark to subscribe to"
  type        = string
  default     = "1.2.0"
}

variable "pci_standards_version" {
  description = "The version of the PCI DSS standard to subscribe to"
  type        = string
  default     = "3.2.1"
}
