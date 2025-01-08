output "api_instance_id" {
  description = "API Instance ID"
  type = string
  value = component.api.instance_id
}

output "api_hostname" {
  description = "API Hostname"
  type = string
  value = component.api.hostname
}

output "ui_instance_id" {
  description = "UI instance ID"
  type = string
  value = component.ui.instance_id
}

output "ui_hostname" {
  description = "UI hostname"
  type = string
  value = component.ui.hostname
}
