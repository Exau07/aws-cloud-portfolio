output "launch_template_id" {
  description = "ID du Launch Template EC2"
  value       = aws_launch_template.this.id
}