provider "aws" {
    region = "ap-south-1"
}

#calling the module and passing the values
module "ec2_instance" {
    source = "./modules/ec2_instance/ec2-instance"
    #location of module can be anywhere(maybe github too)
    #can use tfvars here
    ami_value = "ami-02b8269d5e85954ef"
    instance_type_value = "t2.micro"
    subnet_id = "subnet-0f1aa6901d2f527cf"
    
}