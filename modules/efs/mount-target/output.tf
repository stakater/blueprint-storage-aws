output "dns-names" {
  value = "${join(",", aws_efs_mount_target.efs-mount-target.*.dns_name)}"
}

output "ids" {
  value = "${join(",", aws_efs_mount_target.efs-mount-target.*.id)}"
}