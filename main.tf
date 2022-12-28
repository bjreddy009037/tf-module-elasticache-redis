resource "aws_elasticache_cluster" "main" {
  cluster_id           = var.CLUSTER_ID
  engine               = var.ENGINE
  node_type            = var.NODE_TYPE
  num_cache_nodes      = 1
  parameter_group_name = aws_elasticache_parameter_group.main.name
  engine_version       = var.ENGINE_VERSION
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.main.name
}