
resource "azurerm_resource_group" "asp_rg" {
  name     = var.resource_group_name
  location = var.location
}
resource "azurerm_service_plan" "example" {
  name                = "${var.app_service_plan_name}-${var.env}"
  resource_group_name = azurerm_resource_group.asp_rg.name
  location            = azurerm_resource_group.asp_rg.location
  os_type             = var.asp_os_type
  sku_name            = var.asp_sku
}
