variable "efs-id" {
  description = "ID of the EFS to which the mount-target is being applied"
}

variable "subnets" {
  description = "Comma-Separated List of subnet IDs to be associated with mount target"
}

variable "security-groups" {
  description = "Comma-Separated List of security group IDs"
}