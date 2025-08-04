resource "aws_lambda_function" "this" {
  function_name = var.function_name
  filename      = var.lambda_source_path
  handler       = var.handler
  runtime       = var.runtime
  role          = var.lambda_role_arn
  source_code_hash = filebase64sha256(var.lambda_source_path)
}

resource "aws_cloudwatch_event_rule" "schedule" {
  name                = "${var.function_name}-schedule"
  schedule_expression = var.schedule_expression
}

resource "aws_cloudwatch_event_target" "target" {
  rule = aws_cloudwatch_event_rule.schedule.name
  arn  = aws_lambda_function.this.arn
  target_id = "InvokeLambda"
}

resource "aws_lambda_permission" "allow_eventbridge" {
  statement_id  = "AllowExecutionFromEventBridge"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.this.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.schedule.arn
}