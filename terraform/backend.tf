terraform {
  backend "s3" {
    bucket         = "REPLACE_WITH_TF_STATE_BUCKET"
    key            = "enterprise-devops/eks/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "REPLACE_WITH_TF_LOCK_TABLE"
    encrypt        = true
  }
}
