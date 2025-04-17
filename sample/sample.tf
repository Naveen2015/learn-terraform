variable "test" {
  default = "naveen"
}

output "value1" {
  value = var.test
}

output "value2" {
  value = "value of test variable: ${var.test}"
}

variable "dict" {
  default = {
    number  = 100
    name = "naveen"
  }
}

output "dictionary" {
  value = "value of: ${var.dict["number"]} :::::: ${var.dict["name"]}"
}

variable "env" {}

output "environment" {
  value = var.env
}

output "sam_env" {
  value = var.env
}