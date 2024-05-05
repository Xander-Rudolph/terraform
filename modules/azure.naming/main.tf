# locals {
#   # abbreviated_region = { for location in azurerm_available_locations.available : location => var.azure_regions[location] }
#   resource_names = {
#     resource_group = "${var.environment}-${local.abbreviated_region}-rg"
#     virtual_network = "${var.environment}-${local.abbreviated_region}-vnet"
#     storage_account = "${var.environment}${local.abbreviated_region}storage"
#     key_vault = "${var.environment}-${local.abbreviated_region}-kv"
#   }
# }

# output "resource_names" {
#   value = { for key, name in local.resource_names : key => local.resource_names[key] }
# }
