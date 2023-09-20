#--main/outputs--


output "dest_bucket_arn" {
  value = aws_s3_bucket.destination_bucket.arn
}