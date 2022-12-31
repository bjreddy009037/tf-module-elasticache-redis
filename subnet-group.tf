resource "aws_elasticache_subnet_group" "main" {
  name       = "${var.COMPONENT}-${var.ENV}"
  subnet_ids = var.SUBNET_IDS

  tags = {
    Name = "${var.COMPONENT}-${var.ENV}"
  }
}