output "instance_name" {
  value = random_id.instance_name.hex
}

output "hostname" {
  value = random_pet.hostname.id
}

# Publish outputs for downstream stacks
publish_output "instance_name" {
  value = output.instance_name
}

publish_output "hostname" {
  value = output.hostname
}

