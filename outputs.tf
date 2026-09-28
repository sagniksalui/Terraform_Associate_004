output "AMAZON_LINUX_INSTANCE_PUBLIC_IP" {
  value = aws_eip.linux_instance_eip.public_ip
}
