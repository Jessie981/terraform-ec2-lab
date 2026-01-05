# Global Variables
variable "region" {
  description = "the AWS region for the resources. e.g., ap-southeast-1"
  type        = string
}

variable "profile" {
  description = "the AWS profile to use for authentication"
  type        = string
}

# EC2 Instance Variables
variable "ami" {
  description = "the AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-09cd9fdbf26acc6b4"
}
variable "instance_type" {
  description = "the type of instance to use for the EC2 instance"
  type        = string
  default     = "t3.micro"
}