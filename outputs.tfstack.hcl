output "api_instance_id" {
  description = "API Instance ID"
  type = string
  value = component.api.instance_id.hex
}

output "api_hostname" {
  description = "API Hostname"
  type = string
  value = component.api.hostname.id
}

output "ui_instance_id" {
  description = "UI instance ID"
  type = string
  value = component.ui.instance_id.hex
}

output "ui_hostname" {
  description = "UI hostname"
  type = string
  value = component.ui.hostname.id
}
