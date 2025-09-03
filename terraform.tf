
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-00ca32bbc84273381" # Amazon Linux 2 AMI
  instance_type = local.instance_type[terraform.workspace]
}

locals {
  instance_type = {
  default = "t2.micro"
  dev     = "t2.small"
  prod    = "t2.medium"
  }
}

