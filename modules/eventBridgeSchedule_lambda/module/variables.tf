variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "lambda_source_path" {
  description = "Path to Lambda deployment ZIP file"
  type        = string
}

variable "handler" {
  description = "Lambda handler (e.g., index.handler)"
  type        = string
}

variable "runtime" {
  description = "Lambda runtime (e.g., nodejs18.x)"
  type        = string
  default     = "nodejs18.x"
}

variable "schedule_expression" {
  description = "EventBridge schedule expression. See https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-rule-schedule.html#eb-create-scheduled-rule-schedule"
  type        = string
}

variable "lambda_role_arn" {
  description = "IAM role ARN for Lambda execution"
  type        = string
}