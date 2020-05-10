# print AWS EC2 public DNS
output "example_public_dns" {
 value = aws_instance.myfirst_ec2.public_dns 
}
