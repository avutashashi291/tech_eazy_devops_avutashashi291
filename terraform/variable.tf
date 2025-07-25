variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  sensitive   = true
}

variable "instance_type" {
  default     = "t2.micro"
  description = "EC2 instance type"
}

variable "key_name" {
  description = "SSH Key Pair name"
}

variable "stage" {
  description = "Deployment stage (dev/prod)"
  default     = "dev"
}
