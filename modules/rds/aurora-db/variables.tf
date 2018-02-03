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

variable "vpc_id" {
  description = "The ID of the VPC that the RDS cluster will be created in"
}

variable "vpc_cidr" {
  description = "The CIDR of the VPC that the RDS cluster will be created in"
}

variable "aurora_db_name" {
  description = "Name of the Database"
}

variable "aurora_db_username" {
  description = "Aurora DB Master Username"
}

variable "aurora_db_password" {
  description = "Aurora DB Master Password (Must be atleast 8 characters)"
}

variable "backup_retention_period" {
  default = 14
}

variable "preferred_backup_window" {
  default = "02:00-03:00"
}

variable "preferred_maintenance_window" {
  default = "wed:03:00-wed:04:00"
}

variable "cluster_instance_count" {
  description = "Count of number of DB instances you want to create in the cluster"
  default = "1"
}

variable "cluster_instance_class" {
  description = "Type of instance to be created"
  default = "db.r3.large"
}

variable "publicly_accessible" {
  description = "If true, DB instance will be accessible publicly, i.e. it will be assigned an external IP"
}

variable "subnets" {
  default = "Comma-Separated List of subnet IDs to be associated with Aurora DB"
}

variable "skip_final_snapshot" {
  default = false
}

variable "vpc_rds_security_group_ids" {
    description = "The ID of the security group that should be used for the RDS cluster instances"
}

variable "engine" { }

variable "engine_version" { }
