resource "aws_instance" "web" {
  ami           = "ami-01107263728f3bef4"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name = "HelloWorld"
  }
}