resource "azurerm_resource_group" "default" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_storage_account" "default" {
  name                          = var.name
  resource_group_name           = azurerm_resource_group.default.name
  location                      = var.location
  account_tier                  = var.account_tier
  account_replication_type      = var.account_replication_type
  public_network_access_enabled = var.public_network_access_enabled
  min_tls_version               = "TLS1_2"
  enable_https_traffic_only     = true
  tags                          = var.tags
}

resource "azurerm_storage_container" "default" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.default.name
  container_access_type = var.container_access_type
}
