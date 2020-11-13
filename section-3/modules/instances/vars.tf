//INSTANCE VARIABLES
variable "AMI" {}
variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "KEY_NAME" {}

# variable "IS_IN_VPC" {}

variable "SECURITY_GROUPS" {}
