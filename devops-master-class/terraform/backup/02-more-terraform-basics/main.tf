variable "iam_user_name_prefix" {
  type    = string #any, number, bool, list, map, set, object, tuple
  default = "my_iam_user_default"
}

provider "aws" {
  region  = "us-west-2"
  version = "~> 2.46"
}

resource "aws_iam_user" "my_iam_users" {
  count = 1
  name  = "${var.iam_user_name_prefix}_${count.index}"
}