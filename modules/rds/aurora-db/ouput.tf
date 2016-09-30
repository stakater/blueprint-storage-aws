output "endpoint" {
  value = "${aws_rds_cluster.aurora-cluster.endpoint}"
}

# To allow user to add custom rules to the security group
output "security-group-id"{
  value = "${aws_security_group.aurora_db.id}"
}