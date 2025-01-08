output "instance_id" {
  value = random_id.instance_id.hex
}

output "hostname" {
  value = random_pet.hostname.id
}

