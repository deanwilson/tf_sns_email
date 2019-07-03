variable "additional_tags" {
  default     = {}
  description = "The tags to apply to resources created by this module"
  type        = map(string)
}

variable "display_name" {
  type        = string
  description = "Name shown in confirmation emails"
  default     = "tf_sns_email"
}

variable "email_address" {
  type        = string
  description = "Email address to send notifications to"
}

variable "owner" {
  type        = string
  description = "Sets the owner tag on the CloudFormation stack"
  default     = "tf_sns_email"
}

variable "protocol" {
  default     = "email"
  description = "SNS Protocol to use. email or email-json"
  type        = string
}

variable "stack_name" {
  type        = string
  description = "Cloudformation stack name that wraps the SNS topic. Must be unique."
  default     = "tf-sns-email"
}

