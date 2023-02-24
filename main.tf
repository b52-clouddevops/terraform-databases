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
  RDS_INSTANCE_TYPE    = var.RDS_INSTANCE_TYPE

}


variable "DOCDB_PORT" {}
variable "DOCDB_INSTANCE_CLASS" {}
variable "DOCDB_INSTANCE_COUNT" {}

output "redis" {
    value = module.redis.redis
}
