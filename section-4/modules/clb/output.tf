output "clb_dns_name" {
  value = "${aws_elb.clb-main.dns_name}"
}

output "clb-security-group" {
  value = "${aws_security_group.clb-security-group.id}"
}
