# variables.tfgi

variable "instance_type" {
  description = "The size of the EC2 instance"
  type        = list(string)
  default     = ["t3.micro", "t3.micro", "t3git .micro"]
}

variable "ami" {
  description = "The AMI ID for the EC2 instance"
  type        = list(string)
  default     = ["ami-075d448db8fb256af", "ami-075d448db8fb256af", "ami-075d448db8fb256af"]
}

# 1. Define the list of unique bucket names
variable "s3_bucket_names" {
  type        = list(string)
  description = "A list of S3 bucket names to create"
  default     = ["my-app-dev-logs-1978", "my-app-staging-logs-1978", "my-app-prod-logs-1978"]
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-0042dc1e4d434c590"
}


