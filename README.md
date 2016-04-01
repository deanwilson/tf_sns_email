# SNS Email Topic Terraform Module #

## Introduction

Although Terraform supports most of the AWS SNS resource options you'll need
sometimes you'll want to set up a notification topic that uses the email or
email-json protocols. When using either of those an email is sent to the given
address that needs to be confirmed out of bounds, which isn't really the model
that Terraform wants, or should, support.

This thin wrapper module creates an SNS email topic using a tiny CloudFormation
stack and exposes the topics ARN back to, and through, Terraform

## Usage

Use the module in your terraform files:

    module "admin-sns-email-topic" {
        source = "github.com/deanwilson/tf_sns_email"

        display_name  = "Example.org Admin Notifications"
        email_address = "admin@example.org"
        owner         = "Example.org:Admin"
        stack_name    = "admin-sns-email"
    }

and then run a `terraform get` to download the module.

Once you've applied it you can check the value with

    terraform output -module=admin-sns-email-topic arn

### Module Input Variables

 * `display_name` - the name shown in the confirmation emails
 * `email_address` - email address to send notifications to
 * `owner` - sets the `owner` tag on the CloudFormation stack
 * `protocol` - defaults to email, can also be "email-json"
 * `stack_name` - name for the CloudFormation stack that wraps the `SNS` topic
   * must be unique


### Module Outputs

 * `ARN` - Email SNS topic ARN
   * example - `arn:aws:sns:region:account_id:admin-sns-email-EmailSNSTopic-1FWAH23BOHJVD`

### TODO

 * Find a way to pass an arbitrary mapping of tags through to the cfn stack.

### Author

  [Dean Wilson](http://www.unixdaemon.net)
