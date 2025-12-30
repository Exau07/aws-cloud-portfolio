terraform {
  backend "s3" {
    bucket         = "terraform-state-aws-portfolio"
    key            = "lab-03/dev/terraform.tfstate"
    region         = "eu-west-1"   # région du backend
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}