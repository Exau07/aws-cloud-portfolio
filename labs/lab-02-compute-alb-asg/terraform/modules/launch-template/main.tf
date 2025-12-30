data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_launch_template" "this" {
  name_prefix   = "portfolio-lt-"
  image_id      = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  network_interfaces {
    associate_public_ip_address = false
    security_groups             = [var.ec2_sg_id]
  }

  user_data = base64encode(<<EOF
#!/bin/bash
dnf install -y httpd
systemctl enable httpd
systemctl start httpd
echo "Hello from Lab 02 - AWS Cloud Portfolio" > /var/www/html/index.html
EOF
  )
}