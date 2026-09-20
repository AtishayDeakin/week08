terraform {
    required_version = ">= 1.7.0"

    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 4.0"
        }
    }

    backend "azurerm" {
        resource_group_name  = "sit722-week08-rg"
        storage_account_name = "atishaystorage08"
        container_name        = "tfstate"
        key                    = "week08.terraform.tfstate"
    }
}

provider "azurerm" {
    features {}
}