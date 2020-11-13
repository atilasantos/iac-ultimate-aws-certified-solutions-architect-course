output "security_group_name" {
  value = "${aws_security_group.example-security-group.name}"
}

output "security_group_id" {
  value = "${aws_security_group.example-security-group.id}"
}