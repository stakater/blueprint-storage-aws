resource "aws_s3_bucket" "s3_bucket" {
    bucket = "${var.name}"
    acl = "private"
    force_destroy = true
    tags {
        Name = "${var.name}"
    }
}