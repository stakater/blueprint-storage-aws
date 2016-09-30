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