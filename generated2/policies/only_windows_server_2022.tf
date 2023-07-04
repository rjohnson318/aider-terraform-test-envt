resource "azurerm_policy_definition" "only_windows_server_2022" {
  name         = "only-windows-server-2022"
  policy_type  = "Custom"
  mode         = "All"
  description  = "Allow only Windows Server 2022 VMs"
  policy_rule  = file("${path.module}/only_windows_server_2022_policy.json")
}

resource "azurerm_policy_assignment" "only_windows_server_2022" {
  name                 = "only-windows-server-2022"
  scope                = data.azurerm_subscription.current.id
  policy_definition_id = azurerm_policy_definition.only_windows_server_2022.id
}
