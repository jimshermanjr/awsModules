variable "senderEmail" {
    description = "Email address used to send emails via SES"
    type        = string
}

variable "lambda_role_name" {
  description = "IAM role name for Lambda execution"
  type        = string
}