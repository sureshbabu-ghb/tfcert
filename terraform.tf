
provider "aws" {
  region = "us-east-1"
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
}
