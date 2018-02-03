output "endpoint" {
  value = "${aws_db_instance.postgresql.endpoint}"
}

# To allow user to add custom rules to the security group
output "security-group-id"{
  value = "${
    length(var.allowed_security_groups) == 0
     ? aws_security_group.postgresql_vpc.id
     : aws_security_group.postgresql_sg.id
  }"
}
