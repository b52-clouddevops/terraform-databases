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
  RDS_MYSQL_PORT       = var.RDS_MYSQL_PORT
  RDS_MYSQL_STORAGE    = var.RDS_MYSQL_STORAGE
  RDS_MYSQL_ENGINE_VERSION = var.RDS_MYSQL_ENGINE_VERSION
  


}

output "redis" {
    value = module.redis.redis
}


variable "RDS_MYSQL_PORT" {}
variable "RDS_MYSQL_STORAGE" {}
variable "RDS_MYSQL_ENGINE_VERSION" {}
variable "RDS_INSTANCE_TYPE" {}