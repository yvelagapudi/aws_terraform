#all resources are created in the same region as the provider

resource "aws_instance" "environment-instance" {
  count = 3
     instance_type = (var.environment == "dev" ? "t8i.micro" :"t3.micro")
     ami           = var.environment_ami[count.index]
     security_groups = toset([var.security_groups[count.index]])
     subnet_id = "subnet-09521ea8f750c9a85"

    }
  

    
resource "aws_s3_bucket" "Practice-terrform-bucket" {
     count= 3
     bucket=var.s3_bucket_names[count.index]

    tags = {
      name        = "Practice-terrform-bucket"
      created    = "terrform"

    }
  depends_on = [
    aws_instance.environment-instance
  ]
}
