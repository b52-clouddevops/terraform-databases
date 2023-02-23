module "mongodb" {
  source               = "./vendor/modules/mongodb"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  ENV                  = var.ENV
}

module "redis" {
  source               = "./vendor/modules/redis"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  ENV                  = var.ENV
}

module "mysql" {
  source               = "./vendor/modules/mysql"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  ENV                  = var.ENV
}