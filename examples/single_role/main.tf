terraform {
  required_version = ">= 0.12.26"
}

module "rbac" {
  source = "../../"

  role        = "developers"
  description = "thease users are developers"

  azurerm_access = {
    "${var.subscription_id}" = "Contributor"
  }

  azuredevops_access = {
    Tailspin = "Contributors"
  }
}