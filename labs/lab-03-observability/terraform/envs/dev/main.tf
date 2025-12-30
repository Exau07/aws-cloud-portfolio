############################
# Remote State – Lab 01
############################

data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket         = "terraform-state-aws-portfolio"
    key            = "lab-01/dev/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
  }
}

############################
# Remote State – Lab 02
############################

data "terraform_remote_state" "compute" {
  backend = "s3"

  config = {
    bucket         = "terraform-state-aws-portfolio"
    key            = "lab-02/dev/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
  }
}