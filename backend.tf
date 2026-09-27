#  CORRECT
terraform {
  backend "s3" {
    bucket = "remote-backend-bucket-name" 
    key    = "state/terraform.tfstate"
    region = "ap-south-1"
  }
}