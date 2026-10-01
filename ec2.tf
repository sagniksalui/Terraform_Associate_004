resource "aws_instance" "amazon_linux_instance" {
  ami                    = data.aws_ami.amazon_linux_ami.id
  instance_type          = local.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  count                  = length(var.instance_names)
  tags = merge(
    local.tags,
    {
      Name = local.instance_names[count.index]
    }
  )
}
