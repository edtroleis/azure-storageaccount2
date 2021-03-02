
# Resource group
variable "resource_group_name" {
  description = "Aks resource group"
  type        = string
}

variable "location" {
  description = "Location where the resources will be created"
  type        = string
}

# Storage account
variable "sa2_name" {
  description = "Storage account name"
  type        = string
}

variable "sa2_account_kind" {
  description = "Storage account kind"
  type        = string
}

variable "sa2_account_tier" {
  description = "Storage account tier"
  type        = string
}

variable "sa2_account_replication_type" {
  description = "Storage account replication type"
  type        = string
}

variable "sa2_access_tier" {
  description = "Storage account access tier"
  type        = string
}

variable "sa2_allow_blob_public_access" {
  description = "Storage account public access"
  type        = string
}

# Tags
variable "owner" {
  description = "Tag owner"
  type        = string
}

variable "project" {
  description = "Tag project"
  type        = string
}

variable "environment" {
  description = "Tag environment"
  type        = string
}
