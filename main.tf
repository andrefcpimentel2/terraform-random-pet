terraform {
  required_version = ">= 0.12"
}

variable "pet_name_length" {
  default = "10"
}

resource "random_pet" "pet_name" {
  length = var.pet_name_length
}

output "pet_name" {
  value       = random_pet.pet_name.id
}

