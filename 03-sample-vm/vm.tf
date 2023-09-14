resource "aws_instance" "app" {
  ami           = "ami-0e977b99c38a13dfc"
  instance_type = "t3.medium"

  tags = {
    Name = "Terraform-Instance"
  }
}

output "private_ip_address" {
  value = aws_instance.app.private_dns
}