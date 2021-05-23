provider "aws" {
    profile = "terraform"
    region = "eu-central-1"
}

data "aws_ami" "ubuntu-free" {
    most_recent = true
    owners = ["099720109477"]

    filter {
        name = "name"
        values = ["*ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
}
//
//data "aws_security_group" "selected" {
//  filter {
//      name = "name"
//      values = ["*all-access*"]
//  }
//}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

resource "aws_instance" "web" {
    ami = data.aws_ami.ubuntu-free.id
    instance_type = "t2.micro"
    hibernation = false
    monitoring = true
    security_groups = ["default"]
}

output "instance-data" {
    value = aws_instance.web.private_ip
}