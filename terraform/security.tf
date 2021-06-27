# Security group for ec2 instances in public subnet
resource "aws_security_group" "public-subnet-sg" {
  name        = "public-subnet-sg"
  description = "sg for instances in public subnet"
  vpc_id      = aws_vpc.vpc1.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "public-subnet-sg"
  }
}
