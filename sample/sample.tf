variable "test" {
  default = "naveen"
}

output "value1" {
  value = var.test
}

output "value2" {
  value = "value of test variable: ${var.test}"
}