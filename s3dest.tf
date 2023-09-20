#--main/destb--

resource "aws_s3_bucket" "source_bucket" {
  bucket = "source-bucket-name-account-a"
}
