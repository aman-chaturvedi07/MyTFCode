data "azurerm_subnet" "as" {
  name                 = "amansubnet"
  virtual_network_name = "amanvnet"
  resource_group_name  = "Amanresourcerg"
}

data "azurerm_key_vault" "akv" {
  name                = "key123123"
  resource_group_name = "infra_ror"
}

data "azurerm_key_vault_secret" "akvu" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.akv.id
}
data "azurerm_key_vault_secret" "akvp" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.akv.id
}