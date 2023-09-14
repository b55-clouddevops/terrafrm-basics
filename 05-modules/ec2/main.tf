# Creates EC2
resource "aws_instance" "app" {
  ami                       = "ami-0e977b99c38a13dfc"
  instance_type             = "t3.medium"
  vpc_security_group_ids    = [var.sg]

  tags = {
    Name = "Terraform-Instance"
  }
}

variable "sg"