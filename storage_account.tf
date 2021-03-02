resource "azurerm_storage_account" "storage-account-2" {
  name                     = var.sa2_name
  resource_group_name      = azurerm_resource_group.resource-group.name
  location                 = azurerm_resource_group.resource-group.location
  account_kind             = var.sa2_account_kind
  account_tier             = var.sa2_account_tier
  account_replication_type = var.sa2_account_replication_type
  access_tier              = var.sa2_access_tier
  allow_blob_public_access = var.sa2_allow_blob_public_access

  tags = {
    "Owner"       = var.owner
    "Project"     = var.project
    "Environment" = var.environment
  }
}

resource "azurerm_storage_container" "storage-container" {
  count                 = 2
  name                  = "container-example-${count.index}"
  storage_account_name  = azurerm_storage_account.storage-account-2.name
  container_access_type = "blob"
}

resource "azurerm_storage_blob" "storage-blob" {
  count                  = 2
  name                   = "storage-blob-example-${count.index}"
  storage_account_name   = azurerm_storage_account.storage-account-2.name
  storage_container_name = azurerm_storage_container.storage-container[count.index].name
  type                   = "Page"
  size                   = 1024
}

resource "azurerm_storage_share" "storage-share" {
  name                 = "file-share-example"
  storage_account_name = azurerm_storage_account.storage-account-2.name
  quota                = 2

  acl {
    id = "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI"

    access_policy {
      permissions = "rwdl"
      start       = "2020-08-22T09:38:21.0000000Z"
      expiry      = "2029-12-31T10:38:21.0000000Z"
    }
  }
}
