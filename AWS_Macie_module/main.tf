
resource "aws_macie2_account" "macie_job1" {
  finding_publishing_frequency = var.aws_macie2_account_finding_publishing_frequency
  status                      = var.aws_macie2_account_status
}

resource "aws_macie2_classification_job" "classification_job1" {
  name                     = var.classification_job1_name
  job_type                 = var.classification_job1_job_type
  s3_job_definition {
    bucket_definitions {
      account_id = var.classification_job1_account_id
      buckets    = ["sensitive-data-bucket-name"]
    }
  }
  tags = {
    team        = var.team
    environment = var.environment
    owner       = var.owner
    owner_email = var.owner_email
    creation_date = timestamp()
  }
}
