variable "security_group_name" {
  type        = string
  description = "Security group name for the EC2 instance"
}

variable "instance_names" {
  type        = list(string)
  description = "List of instance names"
}

variable "environment" {
  type        = string
  description = "Environment for the EC2 instance"
}
