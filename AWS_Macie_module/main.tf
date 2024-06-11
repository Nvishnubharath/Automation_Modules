
resource "aws_macie2_account" "macie_job1" {
  finding_publishing_frequency = "FIFTEEN_MINUTES"
  status                      = "ENABLED"
}

resource "aws_macie2_classification_job" "classification_job1" {
  name                     = "sensitive-data-classification-job"
  job_type                 = "ONE_TIME"
  s3_job_definition {
    bucket_definitions {
      account_id = "ACCOUNT ID"
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
