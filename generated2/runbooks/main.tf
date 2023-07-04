provider "azurerm" {
  features {}
}

resource "azurerm_automation_account" "runbook_account" {
  name                = "RunbookAutomationAccount"
  location            = "East US"
  resource_group_name = "RunbookResourceGroup"
  sku_name            = "Basic"
}

resource "azurerm_automation_runbook" "example_runbook" {
  name                = "ExampleRunbook"
  location            = azurerm_automation_account.runbook_account.location
  resource_group_name = azurerm_automation_account.runbook_account.resource_group_name
  account_name        = azurerm_automation_account.runbook_account.name
  log_verbose         = "true"
  log_progress        = "true"
  description         = "This is an example runbook for Terraform and Terragrunt in Azure Gov: Management and Maintenance"
  runbook_type        = "PowerShell"
  content             = file("${path.module}/example_runbook.ps1")
}

resource "azurerm_automation_schedule" "example_schedule" {
  name                    = "ExampleSchedule"
  resource_group_name     = azurerm_automation_account.runbook_account.resource_group_name
  automation_account_name = azurerm_automation_account.runbook_account.name
  frequency               = "OneTime"
  start_time              = "2023-01-01T00:00:00Z"
}

resource "azurerm_automation_job_schedule" "example_job_schedule" {
  resource_group_name     = azurerm_automation_account.runbook_account.resource_group_name
  automation_account_name = azurerm_automation_account.runbook_account.name
  schedule_name           = azurerm_automation_schedule.example_schedule.name
  runbook_name            = azurerm_automation_runbook.example_runbook.name
}