# Resource group
location            = "East US"
resource_group_name = "rg-storageaccount"

# Storage account
sa2_name                     = "edtroleissaexample2"
sa2_account_kind             = "StorageV2"
sa2_account_tier             = "Standard"
sa2_account_replication_type = "LRS"
sa2_access_tier              = "Hot"
sa2_allow_blob_public_access = "true"

# Tags
owner       = "Troleis"
project     = "azure-sqlserver"
environment = "Development"