module "azure_rbac" {
  source = "../"

  for_each    = local.rbac_roles
  role        = each.key
  description = each.value.description

  azurerm_access     = each.value.azurerm_access
  azuredevops_access = each.value.azuredevops_access
}

locals {
  rbac_roles = {
    stakeholders = {
      description = "Stakeholder roles have read only visablity of all innerworkings"
      azurerm_access = {
        "${var.dev_resources}"     = "Contributor"
        "${var.staging_resources}" = "Reader"
        "${var.prod_resources}"    = "Reader"
      }
      azuredevops_access = {
        Tailspin = "Project Administrators"
      }
    }

    developers = {
      description = "Developer roles "
      azurerm_access = {
        "${var.dev_resources}"     = "Contributor"
        "${var.staging_resources}" = "Reader"
        "${var.prod_resources}"    = "Reader"
      }
      azuredevops_access = {
        Tailspin = "Contributors"
      }
    }

    devops_enginners = {
      description = "Product owners"
      azurerm_access = {
        "${var.dev_resources}"     = "Contributor"
        "${var.staging_resources}" = "Contributor"
        "${var.prod_resources}"    = "Reader"
      }
      azuredevops_access = {
        Tailspin = "Build Administrators"
      }
    }
  }
}

variable "dev_resources" {
  type        = string
  description = "The scope at which the Role Assignment applies to, such as /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333"
}

variable "staging_resources" {
  type        = string
  description = "The scope at which the Role Assignment applies to, such as /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333"
}

variable "prod_resources" {
  type        = string
  description = "The scope at which the Role Assignment applies to, such as /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333"
}