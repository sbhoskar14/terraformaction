provider "azurerm" {
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
