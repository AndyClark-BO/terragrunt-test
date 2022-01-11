

variable "test" {
  type        = string
  description = "A test string"
  default     = "Not set"
}

data "external" "test" {
  program = ["echo", "{\"test\": \"${var.test}\"}"]
}

output "test" {
  value = data.external.test.result
}
