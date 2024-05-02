resource "aws_key_pair" "dove-key" {
  key_name   = "dovkey"
  public_key = file("../dovkey.pub")
}
resource "aws_instance" "dove_instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  subnet_id              = aws_subnet.dove-pub-1.id
  key_name               = aws_key_pair.dove-key.key_name
  vpc_security_group_ids = [aws_security_group.my_dove_sg.id]
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
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }


  connection {
    user        = var.USER
    private_key = file("../dovkey")
    host        = self.public_ip
  }
}