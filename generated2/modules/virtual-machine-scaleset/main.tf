resource "azurerm_virtual_machine_scale_set" "vmss" {
  name                = var.vmss_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.vm_sku
  instances           = var.instance_count

  storage_profile_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }

  storage_profile_os_disk {
    name              = ""
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = var.os_disk_type
  }

  os_profile {
    computer_name_prefix = var.computer_name_prefix
    admin_username       = var.admin_username
    admin_password       = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = var.disable_password_authentication
    ssh_keys {
      path     = "/home/${var.admin_username}/.ssh/authorized_keys"
      key_data = var.ssh_key
    }
  }

  network_profile {
    name    = var.network_profile_name
    primary = true

    ip_configuration {
      name      = var.ip_configuration_name
      primary   = true
      subnet_id = var.subnet_id
    }
  }

  tags = var.tags
}