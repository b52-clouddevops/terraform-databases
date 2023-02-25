ENV                     = "dev"


# MySQL Variable Values 

RDS_MYSQL_PORT = 3306
RDS_MYSQL_STORAGE = 10
RDS_MYSQL_ENGINE_VERSION = "5.7"
RDS_INSTANCE_TYPE = "db.t3.micro"

# DocDB Values
DOCDB_PORT = 27017
DOCDB_INSTANCE_CLASS = "db.t3.medium"
DOCDB_INSTANCE_COUNT = 1
# DOCDB_INSTACE_CLASS = "db.t3.medium"
# DOCDB_INSTACE_COUNT = 1


# Elastic Cache Value
REDIS_PORT = 6379
REDIS_INSTANCE_NODETYPE = "cache.t3.micro"
REDIS_INSTANCE_COUNT = 1
REDIS_ENGINE_VERSION = "6.x"
