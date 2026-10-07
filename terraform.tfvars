security_group_name = "allow_ssh"
instance_names      = ["Master", "Agent 1", "Agent 2"]
environment         = "dev"
sg_ports            = [22, 80, 443]