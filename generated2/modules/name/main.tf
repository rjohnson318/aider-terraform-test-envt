terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "name_prefix" {
  type = string
}

resource "azurerm_resource_group" "name_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_dns_zone" "name_zone" {
  name                = "${var.name_prefix}.example.com"
  resource_group_name = azurerm_resource_group.name_rg.name
}

output "resource_group_name" {
  value = azurerm_resource_group.name_rg.name
}

output "dns_zone_name" {
  value = azurerm_dns_zone.name_zone.name
}