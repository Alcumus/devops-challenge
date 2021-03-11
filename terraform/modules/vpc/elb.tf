# resource "aws_elb" "test_elb" {
#   subnets                   = flatten([aws_subnet.public_subnet.id])
#   cross_zone_load_balancing = true
#   security_groups           = flatten([var.sg.id])
#   instances                 = flatten(["${aws_instance.ec2.id}"])

#   listener {
#     instance_port      = 8080
#     instance_protocol  = "http"
#     lb_port            = 443
#     lb_protocol        = "https"
#     ssl_certificate_id = "${var.ssl_arn}"
#   }

#   health_check {
#     healthy_threshold   = 2
#     unhealthy_threshold = 2
#     timeout             = 3
#     target              = "TCP:8080"
#     interval            = 5
#   }

#   tags = {
#     Name   = "test-elb"
#     Author = "test-devops"
#     Tool   = "Terraform"
#   }
# }