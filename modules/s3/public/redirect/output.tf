###############################################################################
# Copyright 2016 Aurora Solutions
#
#    http://www.aurorasolutions.io
#
# Aurora Solutions is an innovative services and product company at
# the forefront of the software industry, with processes and practices
# involving Domain Driven Design(DDD), Agile methodologies to build
# scalable, secure, reliable and high performance products.
#
# Stakater is an Infrastructure-as-a-Code DevOps solution to automate the
# creation of web infrastructure stack on Amazon. Stakater is a collection
# of Blueprints; where each blueprint is an opinionated, reusable, tested,
# supported, documented, configurable, best-practices definition of a piece
# of infrastructure. Stakater is based on Docker, CoreOS, Terraform, Packer,
# Docker Compose, GoCD, Fleet, ETCD, and much more.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###############################################################################

output "arn" {
    value = "${aws_s3_bucket.s3_bucket_website_redirect.arn}"
}

output "website_domain" {
    value = "${aws_s3_bucket.s3_bucket_website_redirect.website_domain}"
}

output "website_endpoint" {
    value = "${aws_s3_bucket.s3_bucket_website_redirect.website_endpoint}"
}

output "bucket_domain_name" {
    value = "${aws_s3_bucket.s3_bucket_website_redirect.bucket_domain_name}"
}

output "hosted_zone_id" {
    value = "${aws_s3_bucket.s3_bucket_website_redirect.hosted_zone_id}"
}

output "bucket_name" {
    value = "${var.name}"
}
