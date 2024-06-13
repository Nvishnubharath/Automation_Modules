variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "cis_standards_version" {
  description = "The version of the CIS AWS Foundations Benchmark to subscribe to"
  type        = string
}

variable "pci_standards_version" {
  description = "The version of the PCI DSS standard to subscribe to"
  type        = string
}
