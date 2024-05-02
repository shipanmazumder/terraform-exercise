resource "aws_instance" "terra-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE
  key_name               = "terraform_key"
  vpc_security_group_ids = ["sg-028662a162e141377"]
  tags = {
    Name    = "Terraform"
    Project = "Terraform Project"
  }
}