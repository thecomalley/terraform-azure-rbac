## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | 0.1.5 |
| <a name="requirement_null"></a> [null](#requirement\_null) | 3.1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_azure_rbac"></a> [azure\_rbac](#module\_azure\_rbac) | ../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dev_resources"></a> [dev\_resources](#input\_dev\_resources) | The scope at which the Role Assignment applies to, such as /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333 | `string` | n/a | yes |
| <a name="input_prod_resources"></a> [prod\_resources](#input\_prod\_resources) | The scope at which the Role Assignment applies to, such as /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333 | `string` | n/a | yes |
| <a name="input_staging_resources"></a> [staging\_resources](#input\_staging\_resources) | The scope at which the Role Assignment applies to, such as /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333 | `string` | n/a | yes |

## Outputs

No outputs.
