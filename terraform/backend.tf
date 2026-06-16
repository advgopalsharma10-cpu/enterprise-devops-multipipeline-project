terraform {
  backend "s3" {
    bucket         = "enterprise-devops-tfstate-489234563752"
    key            = "enterprise-devops/eks/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
