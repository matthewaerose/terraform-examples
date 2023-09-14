resource "azurerm_virtual_network" "this" {
  name = "my-vnet"
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  address_space = ["10.0.0.0/16"]
}
