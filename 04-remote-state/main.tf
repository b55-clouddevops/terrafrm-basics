resource "aws_instance" "web" {
  count         = 0

  ami           = "ami-0e977b99c38a13dfc"
  instance_type = "t3.medium"

  tags = {
    Name = "Terraform-Web-Instance"
  }
}