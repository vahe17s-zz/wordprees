
variable "cidr_block" {
  type = string
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

variable "product_name" {
  default = "vahe-terraform-test"
}