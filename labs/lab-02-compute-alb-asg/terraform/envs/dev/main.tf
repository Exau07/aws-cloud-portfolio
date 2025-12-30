data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket         = "terraform-state-aws-portfolio"
    key            = "lab-01/dev/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
  }
}

module "security_groups" {
  source = "../../modules/security-groups"
  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
}

module "alb" {
  source            = "../../modules/alb"
  vpc_id            = data.terraform_remote_state.network.outputs.vpc_id
  public_subnet_ids = data.terraform_remote_state.network.outputs.public_subnet_ids
  alb_sg_id         = module.security_groups.alb_sg_id
}

module "launch_template" {
  source        = "../../modules/launch-template"
  instance_type = var.instance_type
  ec2_sg_id     = module.security_groups.ec2_sg_id
}

module "asg" {
  source              = "../../modules/asg"
  private_subnet_ids  = data.terraform_remote_state.network.outputs.private_subnet_ids
  target_group_arn   = module.alb.target_group_arn
  launch_template_id = module.launch_template.launch_template_id
}