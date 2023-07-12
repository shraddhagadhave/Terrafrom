provider "aws" {
region = "us-west-2"
}

resource "aws_eip" "lb" {
    domain =  "vpc"
}

resource "aws_security_group" "allow_tls" {
    name = "allow_tls"
    description = "Allow TLS inbund traffic"


ingress {
    description = "TLS from VPC"
    from_port = 443
    to_port  = 443
    protocol  = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]
#[aws_eip.lb.public_ip]
# here it gives and error stating this is not valid cidr block it has to be 52.43.64.167/32    
}

egress {
    from_port = 0
    to_port  = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
}
}

