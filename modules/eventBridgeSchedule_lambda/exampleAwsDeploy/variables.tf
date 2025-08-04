variable "function_name" {}
variable "lambda_source_path" {}
variable "handler" {
  default = "index.handler"
}
variable "runtime" {
  default = "nodejs18.x"
}
variable "schedule_expression" {
  default = "rate(5 minutes)"
}
variable "lambda_role_arn" {}