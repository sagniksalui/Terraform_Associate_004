locals {
  cidr_ipv4           = "0.0.0.0/0"
  instance_names      = [for name in var.instance_names : "${var.environment}-${name}"]
  instance_type       = var.environment == "dev" ? "t3.micro" : "m5.large"
  security_group_name = "${var.environment}-${var.security_group_name}"
  tags = {
    CreatedBy    = "Terraform"
    ManagedBy    = "Terraform"
    CreationDate = formatdate("DD-MMM-YYYY", timestamp())
  }
}
