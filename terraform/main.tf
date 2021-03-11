module "vpc" {
    source			= "./modules/vpc"

 	providers = {
       "aws" = aws.aws-default
    }

	environment = var.environment
}

module "sg" {
    source			= "./modules/sg"

 	providers = {
       "aws" = aws.aws-default
    }

	vpc_id			= module.vpc.vpc_id
	environment = var.environment
}

module "ec2" {
	source 				= "./modules/ec2"

 	providers = {
       "aws" = aws.aws-default
    }

 	vpc_id 				= module.vpc.vpc_id
	subnet_public_id	=module.vpc.public_subnets[0]
	key_pair_name		=module.vpc.ec2accessName
	security_group_ids 	= [module.sg.sg_22, module.sg.sg_80]
	environment 	= var.environment
}