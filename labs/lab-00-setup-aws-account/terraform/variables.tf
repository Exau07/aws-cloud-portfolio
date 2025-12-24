variable "aws_region" {
  description = "Région AWS"
  type        = string
  default     = "eu-west-1"
}

variable "aws_profile" {
  description = "Profil AWS CLI utilisé par Terraform"
  type        = string
}

variable "alert_email" {
  description = "Email pour alertes budget"
  type        = string
}