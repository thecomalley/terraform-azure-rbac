## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | >= 1.0.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | >= 0.1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | >= 1.0.0 |
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | >= 0.1.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_group.main](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group) | resource |
| [azuredevops_group.ado_aad_link](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/group) | resource |
| [azuredevops_group_membership.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/group_membership) | resource |
| [azurerm_role_assignment.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azuread_group.aad_group](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/group) | data source |
| [azuredevops_group.ado_group](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/group) | data source |
| [azuredevops_project.main](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azuredevops_access"></a> [azuredevops\_access](#input\_azuredevops\_access) | map of access for Azure DevOps resources | `map(any)` | n/a | yes |
| <a name="input_azurerm_access"></a> [azurerm\_access](#input\_azurerm\_access) | map of access for Azure resources | `map(string)` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | (Required) description of the role | `string` | n/a | yes |
| <a name="input_role"></a> [role](#input\_role) | (Required) name of the role | `string` | n/a | yes |

## Outputs

No outputs.
