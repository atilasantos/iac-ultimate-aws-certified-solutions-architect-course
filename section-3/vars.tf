#INSTANCE VARIABLES
variable "AMI" {
  type = "map"
  default = {
    "sp-east-1" = "ami-02898a1921d38a50b"
  }
}
variable "REGION" {
  default = "sp-east-1"
}
variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

#SECURITY GROUP VARIABLES
variable "FROM_PORT" {
  default = 22
}
variable "TO_PORT" {
  default = 22
}
variable "PROTOCOL" {
  default = "tcp"
}
variable "MY_IP" {}

//KEY ACCESS
variable "KEY_NAME" {
  default = "mykey"
}
variable "PUB_KEY" {}
variable "IS_IN_VPC" {
  default = true
}