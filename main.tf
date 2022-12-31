resource "aws_elasticache_cluster" "escluster" {
  cluster_id           = "${var.COMPONENT}-cache"
  engine               = var.EC_ENGINE
  node_type            = var.EC_NODE_TYPE
  num_cache_nodes      = var.EC_NODE_COUNT
  parameter_group_name = aws_elasticache_parameter_group.main.name
  engine_version       = var.EC_ENGINE_VERSION
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.main.name
}
