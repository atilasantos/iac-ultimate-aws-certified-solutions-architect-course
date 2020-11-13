#INSTANCE VARIABLES
variable "AMI" {
  type = "map"
  default = {
    "sa-east-1" = "ami-02dc8ad50da58fffd"
  }
}
variable "REGION" {
  default = "sa-east-1"
}
variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

#SECURITY GROUP VARIABLES

//KEY ACCESS
variable "KEY_NAME" {
  default = "mykey"
}
variable "PUB_KEY" {}
# variable "IS_IN_VPC" {
#   default = true
# }
variable "INGR_PORTS" {
  type    = "list"
  default = [22, 80]
}

// CLASSIC ELASTIC LOAD BALANCER