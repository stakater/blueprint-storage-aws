output "file-system-id" {
  value = "${aws_efs_file_system.efs.id}"
}

output "efs-sg-id" {
  value = "${aws_security_group.efs.id}"
}