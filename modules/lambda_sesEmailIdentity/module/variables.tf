variable "senderEmail" {
    description = "Email address used to send emails via SES"
    type        = string
}

variable "lambda_role_name" {
  description = "IAM role name for Lambda execution"
  type        = string
}

variable "lambda_resource_arn" {
    description = "Optional. The lambda resource getting assigned the policy to allow to send email via SES. Default value of '*' allows for any lambda function to send via SES"
    type        = string
    default     = "*"
}