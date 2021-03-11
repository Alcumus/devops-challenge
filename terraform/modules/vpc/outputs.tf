output vpc_id {
  value = aws_vpc.vpc.id
}
output public_subnets {
  value = [aws_subnet.public_subnet.id]
}
output ec2accessName {
  value = aws_key_pair.ec2access.key_name
}