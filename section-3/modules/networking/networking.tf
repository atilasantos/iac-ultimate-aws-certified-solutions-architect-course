resource "aws_security_group" "example-security-group" {
  name        = "Allow ssh"
  description = "Allow ssh just for my PC"

  ingress {
    description     = "SSH allowed"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = ["${var.CLB_SG}"]
  }
  egress {
    description = "Allow access to www"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    "Name" = "instance-security-group"
  }
}
