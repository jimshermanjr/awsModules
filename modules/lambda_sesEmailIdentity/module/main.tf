resource "aws_ses_email_identity" "sender" {
  email = var.senderEmail
}

resource "aws_iam_role_policy" "lambda_ses_policy" {
  name   = "lambda_ses_policy"
  role   = var.lambda_role_name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "ses:SendEmail"
        Resource = "*"
      }
    ]
  })
}