resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_E2s_v3"

  admin_username = "gowthamazure"
  admin_password = "password@123"

  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]

  custom_data = base64encode(<<EOF
#!/bin/bash
apt-get update -y
apt-get install nginx -y

systemctl start nginx
systemctl enable nginx

cat <<HTML > /var/www/html/index.html
${templatefile("${path.module}/portfolio/index.html", {
  storage_account_name = azurerm_storage_account.portfolio_sa.name
  container_name       = azurerm_storage_container.images.name
  blob_name            = azurerm_storage_blob.profile_photo.name
})}
HTML

systemctl restart nginx
EOF
)

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}