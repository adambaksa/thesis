variable "resource_group_name" {
  description = "app-grp"
}

variable "location" {
  description = "North Europe"
  default     = "North Europe"
}

variable "app_vm" {
  description = "neumann_vm01"
}

variable "admin_username" {
  description = "fleq8s"
}

variable "admin_password" {
  description = "Azure@123"
  sensitive   = true
}
