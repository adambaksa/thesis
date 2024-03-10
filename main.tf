# We first specify the terraform provider. 
# Terraform will use the provider to ensure that we can work with Microsoft Azure

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.95.0"
    }
  }
}

# Here we need to mention the Azure AD Application Object credentials to allow us to work with 
# our Azure account

provider "azurerm" {
  subscription_id = "e9f2368c-0dff-43f0-8a05-f7d8ffe8df6e"
  client_id       = "5ccb6a14-ebc5-4fb2-aa19-7d9f2dae0374"
  client_secret   = "yuN8Q~Ky46vbHH1.Em9gIRrEiggnG2rKbNDOna-w"
  tenant_id       = "7e251758-ea33-468d-9d61-4a8e5ebea98d"
  features {}
}

# The resource block defines the type of resource we want to work with
# The name and location are arguements for the resource block

resource "azurerm_resource_group" "app_grp"{
  name="app-grp" 
  location="West Europe"
}