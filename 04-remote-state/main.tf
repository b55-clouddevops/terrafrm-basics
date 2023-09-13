resource "aws_instance" "web" {
  count         = var.howManyYouWant

  ami           = "ami-0e977b99c38a13dfc"
  instance_type = "t3.medium"

  tags = {
    Name = "Terraform-Web-Instance-${count.index+1}"
  }
}