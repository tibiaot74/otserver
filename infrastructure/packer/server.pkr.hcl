packer {
  required_plugins {
    amazon = {
      version = ">= 1.1.3"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}

source "amazon-ebs" "server" {
  ami_name      = "tibia-server-ami-${local.timestamp}"
  ami_description = "AMI for running tibia OTserver"
  instance_type = "t2.micro"
  region        = "us-east-1"
  source_ami    = "ami-052efd3df9dad4825" # Ubuntu 22.04 
  ssh_username  = "ubuntu"

  run_tags = {
    Name = "Packer - Tibia Otserver"
  }

  tags = {
    Name = "Tibia Otserver"
  }
}

build {
  sources = [
    "amazon-ebs.server"
  ]

  provisioner "file" {
    source      = "${path.root}/otserver.service"
    destination = "/tmp/otserver.service"
  }
  
  provisioner "shell" {
    script = "${path.root}/build.sh"
  }
}