
resource "azurerm_resource_group" "module_test"{
    for_each = var.rg_module
    name = each.value.name
    location = each.value.location

}
