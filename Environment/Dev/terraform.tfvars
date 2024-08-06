rg_module1 = {
  rg1 = {
    name     = "dev-rg1"
    location = "canadacentral"
  }

  rg2 = {
    name     = "dev-rg2"
    location = "westus"
  }
}

storageaccount1 = {
    
    st1 = {
      name                     = "devstorage06082024"
      location                 = "westus"
      resource_group_name      = "dev-rg1"
      account_tier             = "Standard"
      account_replication_type = "LRS"
    }

    st2 = {
      name                     = "dev-storage08082024"
      location                 = "canadacentral"
      resource_group_name      = "rg1"
      account_tier             = "Standard"
      account_replication_type = "ZRS"
    }
 }

virtual1 = {
      vnet1 = {   name                = "vnet1"
  location            = "westus"
  resource_group_name = "rg1"
  address_space       = ["10.0.0.0/16"]
      }

     vnet2 = {  name                = "vnet2"
  location            = "canadacentral"
  resource_group_name = "rg1"
  address_space       = ["20.0.0.0/16"]
     }

    }

subnet1 = {
      subnet = {  name                 = "subnets"
  resource_group_name  = "rg1"
  virtual_network_name = "vnet1"
  address_prefixes     = ["10.0.1.0/24"]
    }
}
  