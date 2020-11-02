resource "aws_instance" "example-instance" {
  key_name        = "${var.KEY_NAME}"
  ami             = "${var.AMI}"
  instance_type   = "${var.INSTANCE_TYPE}"
  security_groups = "${var.SECURITY_GROUPS}"
}

resource "aws_eip" "example-elastic-ip" {
  instance = "${aws_instance.example-instance.id}"
  vpc      = "${var.IS_IN_VPC}"
}
