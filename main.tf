

resource "aws_s3_bucket" "teststaticwebsite" {
  bucket = "nomansadiq11"
  acl    = "public-read"
  policy = "${file("policy.json")}"

  website {
    index_document = "index.html"
    error_document = "error.html"

  }
}