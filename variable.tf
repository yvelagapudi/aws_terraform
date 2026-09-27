# variables.tfgi
# 1. Define the list of unique bucket names
variable "s3_bucket_names" {
  type        = list(string)
  description = "A list of S3 bucket names to create"
  
}



