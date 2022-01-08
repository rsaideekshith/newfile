resource "aws_instance" "name" {
  ami           = "ami-052cef05d01020f1d"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloSai"
  }
}