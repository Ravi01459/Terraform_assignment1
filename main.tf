

resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.loc
}

resource "azurerm_managed_disk" "source" {
  count                = length(var.diskname)
  name                 = var.diskname[count.index]
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = "100"

  tags = {
    environment = "DEV"
    CreatedBy   = "TSteam"
  }
}
