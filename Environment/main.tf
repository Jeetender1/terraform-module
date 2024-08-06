module "rg_module" {
  source    = "../resourcegroup"
  rg_module = var.rg_module1
}

module "storageaccount" {
  source         = "../storageaccount"
  storageaccount = var.storageaccount1
  depends_on     = [module.rg_module]
}

module "virtual" {
  source  = "../vnet"
  virtual = var.virtual1
  depends_on = [ module.rg_module ]
}

module "subnet" {
  source     = "../subnet"
  subnet    = var.subnet1
  depends_on = [module.virtual]

}
