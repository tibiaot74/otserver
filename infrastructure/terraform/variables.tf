variable "region" {
  type        = string
  description = "AWS region to deploy the resources"
  default     = "us-east-1"
}

variable "use_spot" {
  type        = bool
  description = "Bool to indicate if instance should run on a spot instance"
  default     = false
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type to deploy the instance"
}

variable "ssh_key" {
  type        = string
  description = "Name of the Key to SSH into the EC2 instance"
  default     = null
}

variable "disk_size_in_GiB" {
  type = number
  description = "The EBS volume size to attach to the instance"
  default = 30
}
