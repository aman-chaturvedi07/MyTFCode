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

# module "bastionn" {
#   depends_on = [module.vm]
#   source     = "../../module/05_bastion"
#   bastion    = var.bastion
# }

# module "server" {
#   depends_on = [module.bastionn]
#   source     = "../../module/06_sql_server"
#   sqlserver  = var.sqlserver
# }

# module "database" {
#   depends_on   = [module.server]
#   source       = "../../module/07_sql_database"
#   sql_database = var.sql_database
# }
