resource "aws_key_pair" "dove-key" {
  key_name   = "dovekey"
  public_key = file("dovkey.pub")
}
resource "aws_instance" "dove_instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE
  key_name               = aws_key_pair.dove-key.key_name
  vpc_security_group_ids = ["sg-028662a162e141377"]
  tags = {
    Name    = "Dove Instance"
    Project = "Dove"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"

    ]
  }

  connection {
    user        = var.USER
    private_key = file("dovkey")
    host        = self.public_ip
  }
}