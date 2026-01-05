# Global Variables
variable "region" {
  description = "the AWS region for the resources. e.g., ap-southeast-1"
  type        = string
}

variable "profile" {
  description = "the AWS profile to use for authentication"
  type        = string
}

variable "instance_type" {
  description = "the type of instance to use for the EC2 instance"
  type        = string
  default     = "t3.micro"
}