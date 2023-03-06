
# resource "azurerm_resource_group" "asp_rg" {
#   name     = "${var.resource_group_name}-${var.env}"
#   location = var.location
# }

module "resource_groups" {
    source          = "./Modules/Resource_Groups/"
    resource_groups = var.resource_groups
}

module "app_insights" {
  source                        = "./Modules/AppInsights"
  resource_group                = var.app_insights_resource_group_name
  app_insights_additional_tags  = var.app_insights_additional_tags
  application_insights          = var.application_insights
}
resource "azurerm_service_plan" "example" {
  name                = "${var.app_service_plan_name}-${var.env}"
  resource_group_name = module.resource_groups.resource_group_ids_map["${var.resource_groups["name"]}"]
  location            = module.resource_groups.resource_group_ids_map["${var.resource_groups["location"]}"]
  os_type             = var.asp_os_type
  sku_name            = var.asp_sku
}
