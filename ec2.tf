resource "aws_instance" "amazon_linux_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "AmazonLinuxInstance"
  }
}
