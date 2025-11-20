provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "example" {
    ami=var.ami_value
    instance_type = var.instance_type_value
    subnet_id = var.subnet_id
    associate_public_ip_address = true
}
#similar to tvfars file which we deleted

#from terraform registry--not recommended, use privat erepo
# module "ec2-instance_example_complete" {
#   source  = "terraform-aws-modules/ec2-instance/aws//examples/complete"
#   version = "6.1.4"
# }
