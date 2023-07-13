provider "aws" {
    region = "us-west-2"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

output "vpc_ip" {
    value = "https://${aws_eip.lb.public_ip}:8080"
}