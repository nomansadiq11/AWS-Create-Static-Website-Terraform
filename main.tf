

resource "aws_s3_bucket" "teststaticwebsite" {
  bucket = "${var.BucketName}"
  acl    = "public-read"
  policy = "${file("policy.json")}"

  website {
    index_document = "index.html"
    error_document = "error.html"

  }
}