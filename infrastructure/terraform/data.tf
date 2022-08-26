data "aws_ami" "this" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "name"
    values = ["tibia-server-ami-*"] # Image built using Packer
  }
}

data "aws_availability_zones" "this" {
  filter {
    name = "region-name"
    values = [var.region]
  }
}