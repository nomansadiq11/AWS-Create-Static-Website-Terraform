output "bucket_website_endpoint" {
  value = "${aws_s3_bucket.teststaticwebsite.website_endpoint}"
}