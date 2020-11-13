output "instance_ip" {
  value = "${module.my-instance.aws_instance_ip}"
}

output "dns_name_clb" {
  value = "${module.my-clb.clb_dns_name}"
}
