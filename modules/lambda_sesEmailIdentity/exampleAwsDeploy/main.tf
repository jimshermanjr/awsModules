module "helloWorldMod" {
    source = "../module"
    senderEmail = var.senderEmail
    lambda_role_name = var.lambda_role_name
}