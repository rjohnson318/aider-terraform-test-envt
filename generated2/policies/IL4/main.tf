provider "azurerm" {
  features {}
}

resource "azurerm_policy_definition" "il4_policy_definition" {
  name         = "IL4-Policy"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "IL4 Compliance Policy"

  policy_rule = <<POLICY_RULE
{
  "if": {
    "allOf": [
      {
        "field": "location",
        "in": ["usgovvirginia", "usgovtexas", "usgovarizona", "usgovdodcentral", "usgovdodeast"]
      },
      {
        "field": "tags['IL']",
        "equals": "IL4"
      }
    ]
  },
  "then": {
    "effect": "auditIfNotExists"
  }
}
POLICY_RULE
}

resource "azurerm_policy_set_definition" "il4_policy_set_definition" {
  name         = "IL4-PolicySet"
  policy_type  = "Custom"
  display_name = "IL4 Compliance Policy Set"

  policy_definition_reference {
    policy_definition_id = azurerm_policy_definition.il4_policy_definition.id
  }
}

resource "azurerm_management_group_policy_assignment" "il4_policy_assignment" {
  name                  = "IL4-PolicyAssignment"
  policy_definition_id  = azurerm_policy_set_definition.il4_policy_set_definition.id
  management_group_name = "IL4"
}