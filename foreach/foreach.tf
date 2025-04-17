terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
  }
}
variable "fruits" {
  default = {
    apple = {
      name = "apple"
      qty = 10
    }
    mango = {
      name = "mangod"
      qty = 20
    }
  }
}

resource "null_resource" "fruits" {

  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo fruit name: ${each.key} :::: ${each.value[name]}:::: ${each.value["qty"]}"
  }
}