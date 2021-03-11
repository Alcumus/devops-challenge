output "eip_public_ip" {
  value = aws_eip.instanceElasticIp.public_ip
}