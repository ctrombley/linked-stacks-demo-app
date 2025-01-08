output "instance_name" {
  type = string
  value = random_id.instance_name.hex
}

output "hostname" {
  type = string
  value = random_pet.hostname.id
}
