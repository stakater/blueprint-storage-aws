########################
## Cluster
########################
resource "aws_rds_cluster" "aurora-cluster" {
    cluster_identifier            = "${var.name}"
    engine                        = "${var.engine}"
    engine_version                = "${var.engine_version}"
    database_name                 = "${var.aurora_db_name}"
    master_username               = "${var.aurora_db_username}"
    master_password               = "${var.aurora_db_password}"

    backup_retention_period       = "${var.backup_retention_period}"
    preferred_backup_window       = "${var.preferred_backup_window}"
    preferred_maintenance_window  = "${var.preferred_maintenance_window}"

    db_subnet_group_name          = "${aws_db_subnet_group.aurora_subnet_group.name}"
    final_snapshot_identifier     = "${var.name}-aurora-cluster"
    skip_final_snapshot           = "${var.skip_final_snapshot}"
    vpc_security_group_ids        = [
        "${var.vpc_rds_security_group_id}"
    ]

    tags {
        Name         = "${var.name}-Aurora-DB-Cluster"
        ManagedBy    = "Stakater"
        Environment  = "${var.name}"
    }

    lifecycle {
        create_before_destroy = true
    }
}

########################
## DB Instance
########################
resource "aws_rds_cluster_instance" "aurora-cluster-instance" {
    count                 = "${var.cluster_instance_count}"
    identifier            = "${var.name}-aurora-instance-${count.index}"
    cluster_identifier    = "${aws_rds_cluster.aurora-cluster.id}"
    instance_class        = "${var.cluster_instance_class}"
    db_subnet_group_name  = "${aws_db_subnet_group.aurora_subnet_group.name}"
    publicly_accessible   = "${var.publicly_accessible}"

    engine                = "${var.engine}"
    engine_version        = "${var.engine_version}"

    tags {
        Name         = "${var.name}-Aurora-DB-Instance-${count.index}"
        ManagedBy    = "stakater"
        Environment  = "${var.name}"
    }
    lifecycle {
        create_before_destroy = true
    }
}

resource "aws_db_subnet_group" "aurora_subnet_group" {
    name          = "${var.name}-aurora-db-subnet-group"
    description   = "Allowed subnets for Aurora DB cluster instances"
    subnet_ids    = ["${split(",",var.subnets)}"]

    tags {
        Name         = "${var.name}-Aurora-DB-Subnet-Group"
        ManagedBy    = "Stakater"
        Environment  = "${var.name}"
    }
}

