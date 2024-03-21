variable "resource_group_name" {
  description = "The name of the resource group where all resources will be created."
  type        = string
  default     = "app_grp"
}

variable "location" {
  description = "The Azure region where the resource group and all resources will be created."
  type        = string
  default     = "North Europe"
}

variable "vm_name" {
  description = "The base name of the virtual machine that will be used to generate related resource names, such as subnets."
  type        = string
  default     = "neumann_vm01"
}

variable "admin_username" {
  description = "The administrator username for the virtual machine."
  type        = string
  default     = "fleq8s"
}

variable "admin_password" {
  description = "The administrator password for the virtual machine."
  type        = string
  sensitive   = true
  default     = "Azure@123"
}

variable "virtual_network_name" {
  description = "The name of the virtual network to be created."
  type        = string
  default     = "vnet"
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}
