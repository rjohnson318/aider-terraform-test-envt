provider "azurerm" {
  features {}
}

resource "azurerm_policy_definition" "il5_policy_definition" {
  name         = "IL5-Policy"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "IL5 Compliance Policy"

  policy_rule = <<POLICY_RULE
{
  "if": {
    "allOf": [
      {
        "field": "location",
        "in": ["usgovvirginia", "usgovtexas", "usgovarizona", "usgovdodcentral", "usgovdodeast"]
      },
      {
        "not": {
          "field": "tags['IL5']",
          "equals": "true"
        }
      }
    ]
  },
  "then": {
    "effect": "audit"
  }
}
POLICY_RULE
}

resource "azurerm_policy_set_definition" "il5_policy_set_definition" {
  name         = "IL5-PolicySet"
  policy_type  = "Custom"
  display_name = "IL5 Compliance Policy Set"

  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.il5_policy_definition.id
  }
}

resource "azurerm_management_group_policy_assignment" "il5_policy_assignment" {
  name                  = "IL5-PolicyAssignment"
  policy_definition_id  = azurerm_policy_set_definition.il5_policy_set_definition.id
  management_group_name = "IL5"
}