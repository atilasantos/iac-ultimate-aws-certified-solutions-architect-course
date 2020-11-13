module "my-instance" {
  source = "./section-3/modules/instances"
  //INSTANCE
  KEY_NAME        = "${var.KEY_NAME}"
  AMI             = "${lookup(var.AMI, var.REGION)}"
  INSTANCE_TYPE   = "${var.INSTANCE_TYPE}"
  SECURITY_GROUPS = ["${module.my-net.security_group_name}"]
  # IS_IN_VPC       = "${var.IS_IN_VPC}"
}

module "my-net" {
  source   = "./section-3/modules/networking"
  CLB_SG   = "${module.my-clb.clb-security-group}"
}


module "my-clb" {
  source = "./section-4/modules/clb"

  ELB_AZ   = "${var.REGION}"
  INSTANCE = "${module.my-instance.aws_instance_id}"
}