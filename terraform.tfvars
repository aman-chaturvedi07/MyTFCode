rg = {
  rg1 = {
    name     = "Amanresourcerg"
    location = "australiacentral"
  }
}

network = {
  network1 = {
    name                = "amanvnet"
    location            = "australiacentral"
    resource_group_name = "Amanresourcerg"
    subnet = {
      subnet1 = {
        name             = "amansubnet"
        address_prefixes = ["10.0.0.0/24"]
      }
      subnet2 = {
        name             = "AzureBastionSubnet"
        address_prefixes = ["10.7.0.0/26"]
      }
    }
  }
}

ip = {
  ip1 = {
    name                = "amanpubip"
    resource_group_name = "Amanresourcerg"
    location            = "australiacentral"
  }
}

linux = {
  linux1 = {
    vmname              = "amanvirtualm"
    resource_group_name = "Amanresourcerg"
    location            = "australiacentral"
    size                = "Standard_F2"
    nicname             = "amannic"
    ip_configuration = {
      ip_configuration1 = {
        name                          = "myipconfiguration"
        private_ip_address_allocation = "Dynamic"
      }
    }
  }
}

# bastion = {
#   bastion1 = {
#     bastion_name        = "amankabastion"
#     location            = "australiacentral"
#     resource_group_name = "Amanresourcerg"
#     ip_configuration = {
#       ip_configuration1 = {
#         ip_name = "myipconfiguration"
#       }

#     }
#   }
# }

# sqlserver = {
#   sqlserver1 = {
#     name                         = "amansqlserver"
#     resource_group_name          = "Amanresourcerg"
#     location                     = "centralindia"
#     administrator_login          = "Administrator"
#     administrator_login_password = "Welcome@123"
#   }
# }

# sql_database = {
#   sql_database1 = {
#     name         = "amansqldatabase"
#     collation    = "SQL_Latin1_General_CP1_CI_AS"
#     license_type = "LicenseIncluded"
#   }
# }