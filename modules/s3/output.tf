output "arn" {
    value = "${aws_s3_bucket.s3_bucket.arn}"
}

output "bucket_name" {
    value = "${var.name}"
}
