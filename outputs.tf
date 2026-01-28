output "public-ip-vm1" {
    value = aws_instance.ec2-vm1.public_ip
  
}
output "private-ip-vm1" {
    value = aws_instance.ec2-vm1.private_ip
  
}
output "zone-of-vm1" {
    value = aws_instance.ec2-vm1.availability_zone
  
}
