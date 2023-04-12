
resource "aws_elasticache_subnet_group" "this" {
  name       = var.elasticache_name
  subnet_ids = var.subnet_ids
}

resource "aws_elasticache_cluster" "elasticache" {
  cluster_id           = var.elasticache_name
  engine               = var.engine
  node_type            = var.node_type
  num_cache_nodes      = var.num_cache_nodes
  parameter_group_name = var.parameter_group_name
  engine_version       = var.engine_version
  port                 = var.port
  subnet_group_name    = aws_elasticache_subnet_group.this.name
  security_group_ids   = [aws_security_group.elasticache.id]
}

output "elastiache_address" {
  value = aws_elasticache_cluster.elasticache.cache_nodes[0].address
}