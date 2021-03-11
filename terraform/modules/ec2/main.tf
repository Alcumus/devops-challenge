resource "aws_instance" "ec2-instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  subnet_id = var.subnet_public_id
  vpc_security_group_ids = var.security_group_ids
  key_name = var.key_pair_name

  tags = {
		env = var.environment
  }
}

resource "aws_eip" "instanceElasticIp" {
  vpc       = true
  instance  = aws_instance.ec2-instance.id

  tags = {
    env = var.environment
  }
}