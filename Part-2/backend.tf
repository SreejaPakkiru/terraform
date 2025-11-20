terraform {
 backend "s3" {
   bucket = "srreja-s3-demo-xyz"
   key = "sreeja/terraform.tfstate"
   region = "ap-south-1"
 }
}