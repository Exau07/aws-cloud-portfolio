terraform {
  backend "s3" {
    bucket         = "terraform-state-aws-portfolio"
    key            = "lab-00/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
