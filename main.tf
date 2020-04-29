# add the provider, this code will connect to AWS cloud
provider "aws" {
  region = "us-east-2"
  shared_credentials_file = "/home/pjota/.aws/credentials"
  profile = "mylabs"
}

# define AWS EC2 instance to create
resource "aws_instance" "myfirst_ec2" {
  ami = "ami-0fc20dd1da406780b"
  instance_type = "t2.micro"
  key_name = aws_key_pair.mykey.key_name
  vpc_security_group_ids = [aws_security_group.allowssh.id]
}

# define SSH keys
resource "aws_key_pair" "mykey" {
  key_name = "mykey"
  public_key= file("~/.ssh/aws_terraform.pub")
}

# create AWS SG
resource "aws_security_group" "allowssh" {
  name = "allowssh"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    #Not recommended
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# print AWS EC2 public DNS
output "example_public_dns" {
 value = "${aws_instance.myfirst_ec2.public_dns}" 
}
