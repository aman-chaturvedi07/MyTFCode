module "rgg" {
  source = "../../module/01_resource_group"
  rg     = var.rg
}

module "vnetsubnet" {
  depends_on = [module.rgg]
  source     = "../../module/02_networking"
  network    = var.network
}

module "pubip" {
  depends_on = [module.vnetsubnet]
  source     = "../../module/03_public_ip"
  ip         = var.ip
}

module "vm" {
  depends_on = [module.pubip]
  source     = "../../module/04_compute"
  linux      = var.linux
}
