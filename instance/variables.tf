variable "instance_type" {
  type        = string
  description = "My instance type"
}

variable "instance_ami" {
  type    = string
}

variable "aws_region" {
  default = "eu-central-1"
}

variable "tags" {
  type = map(string)
  default = {
    Terraform = true
  }
}

variable "subnet_id" {
  type = string
}


variable "ingress_rules" {
  default = [{
    port        = 443
    description = "HTTPS"
  },
    {
      port        = 80
      description = "HTTP"
    },
    {
      port        = 22
      description = "SSH"
    }]
}

variable "vpc_id" {
  type = string
}

variable "product_name" {
  default = "vahe-terraform-test"
}