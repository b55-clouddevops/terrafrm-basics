# Creates EC2
resource "aws_instance" "moapp" {
  ami                       = "ami-0e977b99c38a13dfc"
  instance_type             = "t3.medium"
  vpc_security_group_ids    = [var.sg]

  tags = {
    Name = "Module-Instance"
  }
}

variable "sg" {}                                       # Delcare the empty variable of the value you wish to pass and use it