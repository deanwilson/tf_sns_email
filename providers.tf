provider "aws" {
  region  = "${var.aws_region}"
  version = "1.30.0"
}

provider "template" {
  version = "1.0.0"
}
