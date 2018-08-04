variable "aws_region" {
  type        = "string"
  description = "AWS region"
  default     = "eu-west-1"
}

variable "display_name" {
  type    = "string"
  default = "tf_sns_email"
}

variable "email_address" {
  type    = "string"
  default = ""
}

variable "owner" {
  type    = "string"
  default = "tf_sns_email"
}

variable "protocol" {
  default = "email"
  type    = "string"
}

variable "stack_name" {
  type    = "string"
  default = "tf_sns_email"
}
