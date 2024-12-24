variable "region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
}

variable "instance_name" {
  description = "The name to assign to the instance"
  type        = string
}
