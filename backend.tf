terraform {
  backend "s3" {
    bucket = "ultimate-aws-bucket"
    key    = "terraform/state/terraform.tfstate"
    region = "sa-east-1"
  }
}