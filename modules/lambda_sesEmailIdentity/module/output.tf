output "ses_identity_arn" {
    value = aws_ses_email_identity.sender.arn
    description = "ARN of the SES verified email identity"
}