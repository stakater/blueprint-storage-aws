variable "efs-id" {
  description = "ID of the EFS to which the mount-target is being applied"
}

variable "subnets" {
  description = "Comma-Separated List of subnet IDs to be associated with mount target"
}

variable "security-groups" {
  description = "Comma-Separated List of security group IDs"
}

variable "mount-targets-count" {
  description = "count for subnets list (https://github.com/hashicorp/terraform/issues/3888)"
  default = "1"
}