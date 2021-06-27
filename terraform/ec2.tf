resource "aws_instance" "webserver" {
  availability_zone = "us-east-1a"
  subnet_id = aws_subnet.public-subnet-1.id  
  ami           = var.ami
  instance_type = var.ec2-instance-type
  vpc_security_group_ids = [aws_security_group.public-subnet-sg.id]
  key_name = "navitha"
  associate_public_ip_address = "true"

  tags = {
    Name = "webserver"
  }
}
