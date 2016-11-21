output "arn" {
  value = "${aws_s3_bucket.s3-static-website-hosting.arn}"
}
output "bucket_name" {
  value = "${var.name}"
}
output "endpoint" {
  value = "${aws_s3_bucket.s3-static-website-hosting.website_endpoint}"
}