output "api_instance_name" {
  description = "API Instance name"
  type = string
  value = component.api.instance_name.hex
}

output "api_hostname" {
  description = "API Hostname"
  type = string
  value = component.api.hostname.id
}

output "ui_instance_name" {
  description = "UI instance name"
  type = string
  value = component.ui.instance_name.hex
}

output "ui_hostname" {
  description = "UI hostname"
  type = string
  value = component.ui.hostname.id
}
