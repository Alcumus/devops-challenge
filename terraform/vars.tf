variable "AWS-Region" {
    default = "us-east-1"
}

variable "VPC-CIDR" {
    default = "192.168.0.0/16"
}

variable "public-sub-cidr" {
    default = "192.168.2.0/24"
}

# EC2 Variables
variable "ami" {
    default = "ami-0747bdcabd34c712a"
}

variable "ec2-instance-type" {
    default = "t2.medium"
}
