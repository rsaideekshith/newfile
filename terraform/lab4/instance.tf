resource "aws_key_pair" "devopsmonks" {
  key_name   = "devopsmonks"
  public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
}

resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.devopsmonks.key_name

  provisioner "file" {
    source      = "oddeven.sh"
    destination = "/terraform/lab4/oddeven.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /terraform/lab4/oddeven.sh",
      "/terraform/lab4/oddeven.sh args"
    ]
  }
  connection {
    host        = self.public_ip
    user        = var.INSTANCE_USERNAME
    private_key = file("${var.PATH_TO_PRIVATE_KEY}")
  }
  tags = {
    Name = "nginx"
  }
}
