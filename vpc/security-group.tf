resource "aws_security_group" "mesh-vpc-security-group" {
  name        = "mesh-vpc-security-group"
  description = "Allow HTTP, HTTPS, and SSH"
  vpc_id      = "${aws_vpc.mesh-vpc.id}"

  // HTTP
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // HTTPS
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "security-group-id" {
  value = "${aws_security_group.mesh-vpc-security-group.id}"
}
