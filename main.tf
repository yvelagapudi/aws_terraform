
#all resources are created in the same region as the provider

resource "aws_s3_bucket" "Practice-terrform-bucket" {
     count= 3
     bucket=var.s3_bucket_names[count.index]

    tags = {
      name        = "Practice-terrform-bucket"
      created    = "terrform"

    }
  
}
