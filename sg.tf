# create AWS SG
resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"
  ingress {
    description = "SSH inbound"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    #Not recommended
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "SSH outbound"
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}
