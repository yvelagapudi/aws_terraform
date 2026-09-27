# variables.tfgi
# 1. Define the list of unique bucket names
variable "s3_bucket_names" {
  type        = list(string)
  description = "A list of S3 bucket names to create"
  
}

variable "environment" {
   type = list(string)
   default = ["dev", "test", "prod"]
  }

  variable "security_groups" {
    type    = list(string)
      }

  variable "environment_instance" {
    type = list(string)
  }

  variable "environment_ami"{
    type = list(string)
      }









  