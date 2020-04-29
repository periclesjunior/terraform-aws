# define AWS EC2 instance to create
resource "aws_instance" "myfirst_ec2" {
  ami = var.aws_ami
  instance_type = var.aws_ec2_type
  key_name = aws_key_pair.mykey.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
}

# define SSH keys
resource "aws_key_pair" "mykey" {
  key_name = "mykey"
  public_key= file("~/.ssh/aws_terraform.pub")
}
