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
  
}

output "redis" {
    value = module.redis.redis
}


variable "RDS_MYSQL_PORT" {}
variable "RDS_MYSQL_STORAGE" {}
variable "RDS_MYSQL_ENGINE_VERSION" {}
variable "RDS_INSTANCE_TYPE" {}