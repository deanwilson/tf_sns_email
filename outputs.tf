output "arn" {
  value       = aws_cloudformation_stack.sns-topic.outputs["ARN"]
  description = "Email SNS topic ARN"
}

