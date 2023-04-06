location              = "West Europe"
env                   = "uat"
resource_group_name   = "asp-rg"
app_service_plan_name = "asptoday1234"
asp_os_type           = "Linux"
asp_sku               = "P1v2"
resource_groups = {
  resource_group_1 = {
    name     = "asp-uat-rg"
    location = "West Europe"
    tags = {
      created_by = "codycarlson"
      contact_dl = "codycarlson@microsoft.com"
      app_id    = "00000"
    }
  }
}
