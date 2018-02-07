########################
## DB Instance
########################
resource "aws_db_instance" "postgresql" {
  allocated_storage          = "${var.allocated_storage}"
  engine                     = "postgres"
  engine_version             = "${var.engine_version}"
  identifier                 = "${var.database_identifier}"
  snapshot_identifier        = "${var.snapshot_identifier}"
  instance_class             = "${var.instance_type}"
  storage_type               = "${var.storage_type}"
  name                       = "${var.database_name}"
  password                   = "${var.database_password}"
  username                   = "${var.database_username}"
  backup_retention_period    = "${var.backup_retention_period}"
  backup_window              = "${var.backup_window}"
  maintenance_window         = "${var.maintenance_window}"
  auto_minor_version_upgrade = "${var.auto_minor_version_upgrade}"
  final_snapshot_identifier  = "${var.final_snapshot_identifier}"
  skip_final_snapshot        = "${var.skip_final_snapshot}"
  copy_tags_to_snapshot      = "${var.copy_tags_to_snapshot}"
  multi_az                   = "${var.multi_availability_zone}"
  port                       = "${var.database_port}"
  vpc_security_group_ids     = ["${element(concat(aws_security_group.postgresql_vpc.*.id, aws_security_group.postgresql_sg.*.id), 0)}"]
  parameter_group_name       = "${var.parameter_group}"
  storage_encrypted          = "${var.storage_encrypted}"

  tags {
    Name        = "${var.name}-DatabaseServer"
  }
}

########################
## Security group resources
########################
resource "aws_security_group" "postgresql_vpc" {
  count = "${length(var.allowed_security_groups) == 0 ? 1 : 0}"
  name = "${var.name}-postgres"

  vpc_id = "${var.vpc_id}"

  ingress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  egress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name        = "${var.name}-sgDatabaseServer"
  }
}

resource "aws_security_group" "postgresql_sg" {
  count = "${length(var.allowed_security_groups) != 0 ? 1 : 0}"
  name = "${var.name}-postgres"

  vpc_id = "${var.vpc_id}"

  ingress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    security_groups = ["${split(",",var.allowed_security_groups)}"]
  }

  egress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name        = "${var.name}-sgDatabaseServer"
  }
}
