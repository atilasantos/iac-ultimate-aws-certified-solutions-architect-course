//SECURITY GROUP VARIABLES
variable "PROTOCOL" {}
variable "MY_IP" {}
variable "IS_IN_VPC" {
  default = true
}
variable "INGR_PORTS" {
  type = "list"
  default = [22, 80]
}
