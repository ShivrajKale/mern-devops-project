variable "aws_region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name for tagging"
  default     = "mern-devops"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.small"   # 2 vCPU, 2GB RAM — enough for 3 containers
}

variable "key_name" {
  description = "SSH key pair name"
  default     = "mern-devops-key"
}