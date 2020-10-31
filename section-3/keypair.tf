resource "aws_key_pair" "mykey" {
  key_name = "${var.KEY_NAME}"
  public_key = "${var.PUB_KEY}"
}