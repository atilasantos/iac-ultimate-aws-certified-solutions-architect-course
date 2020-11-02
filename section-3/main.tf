module "my-module" {
  source = "./modules"
  //INSTANCE
  KEY_NAME        = "${var.KEY_NAME}"
  AMI             = "${lookup(var.AMI, var.REGION)}"
  INSTANCE_TYPE   = "${var.INSTANCE_TYPE}"
  SECURITY_GROUPS = ["${module.my-module.security_group_name}"]
  IS_IN_VPC       = "${var.IS_IN_VPC}"
  SCRIPT          = "./modules/${var.SCRIPT}"
  //SECURITY GROUP
  PROTOCOL  = "${var.PROTOCOL}"
  MY_IP     = "${var.MY_IP}"
}