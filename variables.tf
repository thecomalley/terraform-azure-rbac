variable "role" {
  type        = string
  description = "(Required) name of the role"
}

variable "description" {
  type        = string
  description = "(Required) description of the role"
}

variable "azurerm_access" {
  type        = map(string)
  description = "map of access for Azure resources"
}

variable "azuredevops_access" {
  type        = map(any)
  description = "map of access for Azure DevOps resources"
}