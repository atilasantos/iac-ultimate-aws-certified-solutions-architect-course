output "security_group_name" {
  value = "${aws_security_group.example-security-group.name}"
}

output "aws_instance_ip" {
  value = "${aws_instance.example-instance.public_ip}"
}
