
variable "pet_name_length" {
  default = "4"
}

resource "random_pet" "pet_name" {
  length = var.pet_name_length
}

output "pet_name" {
  value       = random_pet.pet_name.id
}

