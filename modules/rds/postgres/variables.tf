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

variable "name" { }

variable "vpc_id" {}

variable "vpc_cidr" {
  default = ""
}

variable "allowed_security_groups" {
  default = ""
}

variable "allocated_storage" {
  default = "32"
}

variable "engine_version" {
  default = "9.5.2"
}

variable "instance_type" {
  default = "db.t2.micro"
}

variable "storage_type" {
  default = "gp2"
}

variable "database_identifier" {}

variable "snapshot_identifier" {
  default = ""
}

variable "database_name" {}

variable "database_password" {}

variable "database_username" {}

variable "database_port" {
  default = "5432"
}

variable "backup_retention_period" {
  default = "30"
}

variable "backup_window" {
  # 12:00AM-12:30AM ET
  default = "04:00-04:30"
}

variable "maintenance_window" {
  # SUN 12:30AM-01:30AM ET
  default = "sun:04:30-sun:05:30"
}

variable "auto_minor_version_upgrade" {
  default = true
}

variable "final_snapshot_identifier" {
  default = "terraform-aws-postgresql-rds-snapshot"
}

variable "skip_final_snapshot" {
  default = true
}

variable "copy_tags_to_snapshot" {
  default = false
}

variable "multi_availability_zone" {
  default = false
}

variable "storage_encrypted" {
  default = false
}

variable "subnet_ids" {}

variable "parameter_group" {
  default = "default.postgres9.4"
}
