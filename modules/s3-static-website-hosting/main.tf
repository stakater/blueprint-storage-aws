resource "aws_s3_bucket" "s3-static-website-hosting" {
  bucket = "${var.name}"
  acl = "public-read"
  policy = "${var.policy}"

  tags {
    Name = "${var.name}"
  }
  website {
    index_document = "${var.index}"
    error_document = "${var.error}"
    routing_rules = "${var.routing}"
  }
}