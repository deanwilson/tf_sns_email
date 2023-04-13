## Locals

locals {
  default_tags = {
    "Terraform"        = "true"
    "Terraform-Module" = "deanwilson-sns-email"
  }
}

resource "aws_cloudformation_stack" "sns-topic" {
  name          = var.stack_name
  template_body = templatefile(
    "${path.module}/templates/email-sns-stack.json.tpl",
      {
      display_name  = var.display_name
      email_address = var.email_address
      protocol      = var.protocol
       }
  )

  tags = merge(
    local.default_tags,
    var.additional_tags,
    {
      "Name" = var.stack_name
    },
  )
}

