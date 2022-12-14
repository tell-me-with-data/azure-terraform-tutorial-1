# Configuration for Terraform
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm",
      version = "~>2.38.0"
    }
  }
}

# Configuration fro Azure Terraform Provider
provider "azurerm" {
  features {

  }
}

# the resource group to logically contain resources
resource "azurerm_resource_group" "resource_group" {
  name     = "resource-group-tutorial-1"
  location = "eastus2"
  tags = {
    enviroment = "dev"
    source     = "terraform-dev"
    owner      = "tell_me_with_data_security"
  }
}
