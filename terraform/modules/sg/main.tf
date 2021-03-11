resource "aws_security_group" "sg_22" {
  name = "security_group_22"
  vpc_id = var.vpc_id

  # SSH access from anywhere
  ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    env = var.environment
  }
}

resource "aws_security_group" "sg_80" {
  name = "security_group_80"
  vpc_id = var.vpc_id

  ingress {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    env = var.environment
  }
}