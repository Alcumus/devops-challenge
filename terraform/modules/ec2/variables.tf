# variable "access_key" {}
# variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}
variable "vpc_id" {
  description = "VPC id"
  default = ""
}
variable "instance_ami" {
  description = "EC2 instance ami"
  default = "ami-038f1ca1bd58a5790"
}
variable "instance_type" {
  description = "EC2 instance type"
  default = "t2.micro"
}
variable "subnet_public_id" {
  description = "VPC public subnet id"
  default = ""
}
variable "security_group_ids" {
  description = "EC2 ssh security group"
  type = list(string)
  default = []
}
variable "environment" {
  description = "environment"
  default = ""
}
variable "key_pair_name" {
  description = "EC2 Key pair name"
  default = ""
}