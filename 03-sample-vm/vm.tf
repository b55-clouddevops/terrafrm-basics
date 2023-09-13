resource "aws_instance" "app" {
  ami           = "ami-0e977b99c38a13dfc"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Instance"
  }
}