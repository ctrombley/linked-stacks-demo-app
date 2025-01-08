output "instance_name" {
  description = "Instance name"
  type = string
  value = random.random_id.instance_name.hex
}

output "hostname" {
  description = "Hostname"
  type = string
  value = random.random_pet.hostname.id
}
