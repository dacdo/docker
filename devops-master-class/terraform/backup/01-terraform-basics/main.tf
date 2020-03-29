provider "aws" {
    region = "us-west-2"
    version = "~> 2.46"
}

# plan - execute 
resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-s3-bucket-dacdo-002"
    versioning {
        enabled = true
    }
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc_updated"
}
