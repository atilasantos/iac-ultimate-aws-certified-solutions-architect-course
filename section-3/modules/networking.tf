resource "aws_security_group" "example-security-group" {
  name        = "Allow ssh"
  description = "Allow ssh just for my PC"

  dynamic "ingress" {
    for_each = "${var.INGR_PORTS}"
    content {
      description = "SSH allowed"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "${var.PROTOCOL}"
      cidr_blocks = ["${var.MY_IP}"]
    }
  }

  egress {
    description = "Allow access to www"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    "Name" = "SG allowing SSH"
  }
}
