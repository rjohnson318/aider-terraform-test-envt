provider "azurerm" {
  features {}
}

resource "azurerm_policy_definition" "cmnsvcs_policy" {
  name         = "CMNSVCS-Policy"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Common Services Policy"
  description  = "This policy enforces common services requirements for Azure Government."

  policy_rule = <<POLICY_RULE
{
  "if": {
    "allOf": [
      {
        "field": "type",
        "in": [
          "Microsoft.Compute/virtualMachines",
          "Microsoft.Network/virtualNetworks",
          "Microsoft.Storage/storageAccounts"
        ]
      },
      {
        "not": {
          "field": "location",
          "in": [
            "usgovvirginia",
            "usgovtexas",
            "usgovarizona",
            "usgovlowa"
          ]
        }
      }
    ]
  },
  "then": {
    "effect": "deny"
  }
}
POLICY_RULE
}

resource "azurerm_policy_assignment" "cmnsvcs_policy_assignment" {
  name                 = "CMNSVCS-Policy-Assignment"
  scope                = "/subscriptions/${var.subscription_id}"
  policy_definition_id = azurerm_policy_definition.cmnsvcs_policy.id
}