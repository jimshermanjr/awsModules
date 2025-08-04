output "lambda_arn" {
  value = module.helloWorldMod.lambda_arn
}

output "eventbridge_rule_name" {
  value = module.helloWorldMod.eventbridge_rule_name
}