resource "azuread_group" "main" {
  description  = var.description
  display_name = "rbac-${var.role}"
  # members = 
  # owners = 
  prevent_duplicate_names = true
}

resource "azurerm_role_assignment" "example" {
  for_each = var.azurerm_access

  scope                = each.key
  role_definition_name = each.value
  principal_id         = azuread_group.main.id
}

### Azure DevOps ###

data "azuread_group" "aad_group" {
  display_name = azuread_group.main.name
}

resource "azuredevops_group" "ado_aad_link" {
  origin_id = data.azuread_group.aad_group.object_id
}

data "azuredevops_project" "main" {
  for_each = var.azuredevops_access
  name     = each.key
}

data "azuredevops_group" "ado_group" {
  for_each = var.azuredevops_access

  project_id = data.azuredevops_project.main[each.key].id
  name       = each.value
}

resource "azuredevops_group_membership" "main" {
  for_each = var.azuredevops_access

  group   = data.azuredevops_group.ado_group[each.key].descriptor
  members = [azuredevops_group.ado_aad_link.descriptor]
}