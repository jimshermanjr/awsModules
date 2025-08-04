module "helloWorldMod" {
  source               = "../module"
  function_name        = var.function_name
  lambda_source_path   = var.lambda_source_path
  handler              = var.handler
  runtime              = var.runtime
  schedule_expression  = var.schedule_expression
  lambda_role_arn      = var.lambda_role_arn
}