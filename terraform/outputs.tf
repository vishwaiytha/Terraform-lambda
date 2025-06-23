output "lambda_function_name" {
  description = "Name of the Lambda function"
  value       = aws_lambda_function.main_function.function_name
}

output "lambda_function_arn" {
  description = "ARN of the Lambda function"
  value       = aws_lambda_function.main_function.arn
}

output "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  value       = aws_dynamodb_table.main_table.name
}

output "s3_app_data_bucket" {
  description = "S3 bucket for application data"
  value       = aws_s3_bucket.app_data.bucket
}

output "s3_lambda_deployments_bucket" {
  description = "S3 bucket for Lambda deployments"
  value       = aws_s3_bucket.lambda_deployments.bucket
}