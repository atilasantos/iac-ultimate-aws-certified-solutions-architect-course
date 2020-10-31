resource "aws_security_group" "example-security-group" {
  name        = "Allow ssh"
  description = "Allow ssh just for my PC"

  ingress {
    description = "SSH allowed"
    from_port   = "${var.FROM_PORT}"
    to_port     = "${var.TO_PORT}"
    protocol    = "${var.PROTOCOL}"
    cidr_blocks = ["${var.MY_IP}"]
  }

  tags = {
    "Name" = "SG allowing SSH"
  }
}
