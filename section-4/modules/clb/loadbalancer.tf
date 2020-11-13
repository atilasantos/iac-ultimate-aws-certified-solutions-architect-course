resource "aws_elb" "clb-main" {
  name               = "${var.ELB_NAME}"
  availability_zones = ["${var.ELB_AZ}a", "${var.ELB_AZ}b", "${var.ELB_AZ}c"]
  security_groups    = ["${aws_security_group.clb-security-group.id}"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 4
    timeout             = 10
    target              = "HTTP:80/"
    interval            = 30
  }

  instances                   = ["${var.INSTANCE}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    "Name" = "clb-main"
  }
}

resource "aws_security_group" "clb-security-group" {
  name        = "Allow HTTP1"
  description = "Allow HTTP for everyone"

  ingress {
    description = "Http Access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow access to www"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = "clb-security-group"
  }
}

resource "aws_elb_attachment" "baz" {
  elb      = "${aws_elb.clb-main.id}"
  instance = "${var.INSTANCE}"
}