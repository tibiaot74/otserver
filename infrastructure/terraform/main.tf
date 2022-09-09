###########################################################
#### AWS EC2
###########################################################
resource "aws_instance" "this" {
  count = var.use_spot == true ? 0 : 1

  ami                         = data.aws_ami.this.id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  security_groups             = [aws_security_group.this.id]
  key_name                    = var.ssh_key
  iam_instance_profile        = aws_iam_instance_profile.this.name
  user_data                   = <<-EOF
    #!/bin/bash
    git clone https://github.com/tibiaot74/otserver.git /root/otserver
    cd /root/otserver
    yq -i ".services.server.image = .services.server.build | del(.services.server.build)" docker-compose.yml
    export SERVER_IMAGE="tibiaot74/server:latest"
    yq -i '.services.server.image = env(SERVER_IMAGE)' docker-compose.yml
    systemctl enable otserver
    systemctl start otserver
  EOF

  ebs_block_device {
    device_name = "EBS_Tibia"
    volume_size = var.disk_size_in_GiB
    volume_type = "gp3"
  }

  tags = {
    Name = "Tibia Otserver"
  }
}

resource "aws_spot_instance_request" "this" {
  count = var.use_spot == true ? 1 : 0

  ami                    = data.aws_ami.this.id
  instance_type          = var.instance_type
  spot_type              = "one-time"
  block_duration_minutes = 0
  wait_for_fulfillment   = "true"
  key_name               = var.ssh_key
  vpc_security_group_ids = [aws_security_group.this.id]
  iam_instance_profile   = aws_iam_instance_profile.this.name
  user_data              = <<-EOF
    #!/bin/bash
    git clone https://github.com/tibiaot74/otserver.git /root/otserver
    cd /root/otserver
    yq -i ".services.server.image = .services.server.build | del(.services.server.build)" docker-compose.yml
    export SERVER_IMAGE="tibiaot74/server:latest"
    yq -i '.services.server.image = env(SERVER_IMAGE)' docker-compose.yml
    systemctl enable otserver
    systemctl start otserver
  EOF

  root_block_device {
    volume_size = var.disk_size_in_GiB
    volume_type = "gp3"
  }

}

## Spot instances can't be tagged directly
resource "null_resource" "tag_spot_instance" {
  count      = var.use_spot == true ? 1 : 0
  depends_on = [aws_spot_instance_request.this]

  provisioner "local-exec" {
    command = "aws ec2 create-tags --resource ${local.instance_id} --tags Key=Name,Value=TibiaOtserver"
  }
}

resource "aws_eip" "this" {
  vpc = true
}

resource "aws_eip_association" "this" {
  instance_id   = local.instance_id
  allocation_id = aws_eip.this.id
}

###########################################################
#### AWS SECURITY GROUP
###########################################################
resource "aws_security_group" "this" {
  name = "allow-tibia-otserver-traffic"

  dynamic "ingress" {
    for_each = var.ssh_key != null ? range(1) : []

    content {
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      description      = "Allow SSH into server"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
    }
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "Allow players connect to server"
    from_port        = 7171
    to_port          = 7172
    protocol         = "tcp"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "Allow players to connect to website"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

###########################################################
#### AWS IAM
###########################################################
resource "aws_iam_role" "this" {
  name = "TibiaOtserverRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
  managed_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  ]
}

resource "aws_iam_instance_profile" "this" {
  name = "TibiaOtserverProfile"
  role = aws_iam_role.this.name
}



