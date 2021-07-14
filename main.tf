resource "null_resource" "example" {
  triggers = {
    resource_name = coalesce(var.custom_resource_name, "default_resource_name")

    tags = merge(local.common_tags, var.extra_tags)
  }
}