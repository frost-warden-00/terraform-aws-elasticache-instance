resource "aws_security_group" "elasticache" {

  name        = var.elasticache_name
  vpc_id      = var.vpc_id
  description = "Security group for Elasticache"

  ##################  ingress section  ##################

  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "TCP"
    description = "Redis"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ##################  egress section  ##################

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(tomap({ "Name" = var.elasticache_name }))
}
