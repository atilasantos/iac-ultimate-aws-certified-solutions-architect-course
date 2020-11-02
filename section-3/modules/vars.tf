//INSTANCE VARIABLES
variable "AMI" {}
variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

//SECURITY GROUP VARIABLES
variable "PROTOCOL" {}
variable "MY_IP" {}
variable "SECURITY_GROUPS" {}
variable "KEY_NAME" {}
variable "IS_IN_VPC" {
  default = true
}
variable "INGR_PORTS" {
  type = "list"
  default = [22, 80]
}
