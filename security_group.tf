resource "aws_security_group" "allow_ssh" {
  name        = local.security_group_name
  description = "Allow SSH inbound traffic and all outbound traffic"

  tags = merge(
    local.tags,
    {
      Name = local.security_group_name
    }
  )
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_ipv4" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4         = local.cidr_ipv4
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4         = local.cidr_ipv4
  ip_protocol       = "-1"
}
