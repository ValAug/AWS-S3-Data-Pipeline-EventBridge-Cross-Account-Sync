#--main/outputs--


output "source_bucket_arn" {
  value = aws_s3_bucket.source_bucket.arn
}

output "lambda_execution_arn" {
  value = aws_iam_role.lambda_execution_role.arn
}