resource "aws_instance" "private_server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.private.id

  vpc_security_group_ids = [
    aws_security_group.private_sg.id
  ]

  iam_instance_profile = aws_iam_instance_profile.profile.name

  tags = {
    Name = "private-server"
  }
}