variable "display_name" {
  type = "string"
}

variable "email_address" {
  type = "string"
}

variable "owner" {
  type = "string"
}

variable "protocol" {
  default = "email"
  type    = "string"
}

variable "stack_name" {
  type = "string"
}
