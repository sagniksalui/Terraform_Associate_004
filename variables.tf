variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "Instance type for the EC2 instance"
}

variable "security_group_name" {
  type        = string
  description = "Security group name for the EC2 instance"
}
