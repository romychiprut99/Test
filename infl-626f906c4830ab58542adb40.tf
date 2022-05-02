resource "aws_lambda_function" "prod-accesslease" {
  architectures = ["x86_64"]
  environment {
    variables = {
      Owner = "Sefi"
    }
  }
  ephemeral_storage {
    size = 512
  }
  function_name                  = "prod-accesslease"
  image_uri                      = "094724549126.dkr.ecr.us-east-1.amazonaws.com/prod-accesslease@sha256:0795a07eb3f8d2245c4b4cf414d4761073a10b9d5e9a093f0008135043671d44"
  memory_size                    = 128
  package_type                   = "Image"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::094724549126:role/prod-accesslease"
  source_code_hash               = "0795a07eb3f8d2245c4b4cf414d4761073a10b9d5e9a093f0008135043671d44"
  timeout                        = 30
  tracing_config {
    mode = "Active"
  }
}

