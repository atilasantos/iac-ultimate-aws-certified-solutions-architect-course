output "aws_instance_ip" {
  value = "${aws_instance.example-instance.public_ip}"
}
