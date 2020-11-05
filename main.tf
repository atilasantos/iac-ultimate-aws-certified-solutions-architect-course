module "my-instance" {
  source = "./section-3/modules/instances"
  //INSTANCE
  KEY_NAME        = "${var.KEY_NAME}"
  AMI             = "${lookup(var.AMI, var.REGION)}"
  INSTANCE_TYPE   = "${var.INSTANCE_TYPE}"
  SECURITY_GROUPS = ["${module.my-net.security_group_name}"]
  IS_IN_VPC       = "${var.IS_IN_VPC}"
}

module "my-net" {
  source = "./section-3/modules/networking"
  PROTOCOL  = "${var.PROTOCOL}"
  MY_IP     = "${var.MY_IP}"
}
