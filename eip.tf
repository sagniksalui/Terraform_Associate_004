resource "aws_eip" "linux_instance_eip" {
  instance = aws_instance.amazon_linux_instance.id
}
