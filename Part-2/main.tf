provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "me" {
  ami= "ami-02b8269d5e85954ef"
  instance_type = "t2.micro"
  subnet_id = "subnet-0f1aa6901d2f527cf"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "srreja-s3-demo-xyz"

}

# resource "aws_dynamodb_table" "example" {
#   name             = "example"
#   hash_key         = "TestTableHashKey"
#   billing_mode     = "PAY_PER_REQUEST"
#   stream_enabled   = true
#   stream_view_type = "NEW_AND_OLD_IMAGES"

#   attribute {
#     name = "TestTableHashKey"
#     type = "S"
#   }

#   replica {
#     region_name = "us-east-2"
#   }

#   replica {
#     region_name = "us-west-2"
#   }
# }