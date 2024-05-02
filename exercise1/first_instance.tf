provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "intro" {
  ami                    = "ami-080e1f13689e07408"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "terraform_key"
  vpc_security_group_ids = ["sg-028662a162e141377"]
  tags = {
    Name    = "Terraform"
    Project = "Terraform Project"
  }
}