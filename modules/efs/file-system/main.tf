# EFS cluster
resource "aws_efs_file_system" "efs" {
  creation_token = "${var.name}-efs"
  tags {
    Name = "${var.name}-efs"
  }
  tags {
    Billing = "${var.name}"
  }
}

resource "aws_security_group" "efs"  {
    name = "efs"
    vpc_id = "${var.vpc_id}"
    description = "efs"

    # EFS
    ingress {
      from_port = 2049
      to_port = 2049
      protocol = "tcp"
      cidr_blocks = ["${var.vpc_cidr}"]
    }

    # Allow all outbound traffic
    egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }

    tags {
      Name = "efs"
    }
}