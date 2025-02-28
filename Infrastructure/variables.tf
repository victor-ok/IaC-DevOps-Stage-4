variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.medium"
}

variable "key_name" {
  type = string
}

variable "domain_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "ami" {
  description = "AMI ID"
  type        = string
  default     = "ami-0e1bed4f06a3b463d"
}

variable "key_path" {
  type = string
}

variable "admin_email" {
  description = "Email for Let's Encrypt certificate"
  type        = string
}

variable "git_repo_url" {
  description = "URL of the Git repository containing the application code"
  type        = string
}

variable "git_branch" {
  description = "Git branch to checkout"
  type        = string
}