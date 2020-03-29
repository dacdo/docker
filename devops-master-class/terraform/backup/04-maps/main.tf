variable "users" {
  # default = {
  #   ravs : "Netherlands",
  #   tom : "US",
  #   jane : "India"
  # }

  default = {
    ravs : { country : "Netherlands", department : "ABC" },
    tom : { country : "US", department : "DEF" },
    jane : { country : "India", department : "XYZ" }
  }
}

provider "aws" {
  region  = "us-west-2"
  version = "~> 2.46"
}

resource "aws_iam_user" "my_iam_users" {

  # argument of for_each must be set or map of strings
  for_each = var.users
  name     = each.key
  tags = {
    # country : each.value
    country : each.value.country
    department : each.value.department
  }
}

# terraform console
# aws_iam_user.my_iam_users["tom"]
# aws_iam_user.my_iam_users["tom"].tags
# aws_iam_user.my_iam_users["tom"].tags["department"]
