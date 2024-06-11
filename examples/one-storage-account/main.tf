module "storage-account" {
  source = "../../src"

  name                     = "examplea8b0a4c9"
  location                 = "centralus"
  resource_group_name      = "example"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  container_name           = "terraform"

  tags = {
      environment = "local"
  }
}
