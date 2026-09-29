resource "aws_instance" "amazon_linux_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  count                  = length(var.instance_names)
  tags = {
    Name = var.instance_names[count.index]
  }
}
