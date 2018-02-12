output "endpoint" {
  value = "${aws_db_instance.postgresql.endpoint}"
}

output "security-group-id" {
  value = "${element(concat(aws_security_group.postgresql_vpc.*.id, aws_security_group.postgresql_sg.*.id), 0)}"
}
