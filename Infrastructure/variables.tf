variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
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
