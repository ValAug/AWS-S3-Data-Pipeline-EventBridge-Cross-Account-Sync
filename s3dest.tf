#--main/destb--

resource "aws_s3_bucket" "destination_bucket" {
  bucket = "destination-bucket-name-account-b"
}


resource "aws_s3_bucket_policy" "secure_bucket_policy" {
  bucket = "${aws_s3_bucket.destination_bucket.id}"

  policy = <<EOT
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::12345678:role/lambda_execution_role"
            },
            "Action": [
                "s3:PutObject",
                "s3:PutObjectAcl"
            ],
            "Resource": "${aws_s3_bucket.destination_bucket.arn}/*"
        }
    ]
}
EOT
}