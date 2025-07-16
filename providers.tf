provider "azurerm" {
  tenant_id       = var.tenant_id
  subscription_id = var.sub_id
  client_id       = var.sp_id
  client_secret   = var.sp_secret
  features {

  }
}

terraform {
 backend "azurerm" {
   storage_account_name = "sbstoragestate"
   container_name = "statecon"
   resource_group_name = "RG-keyvault"
   key = "githubactions/terraform.tfstate"   
 }
}
