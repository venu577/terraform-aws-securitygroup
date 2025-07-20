#roboshop-dev-frontend
resource "aws_security_group" "main" {
  name        = var.sg_name
  description = var.description
  vpc_id      = var.vpc_id

  tags = merge(
    var.sg_tags,
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}-${var.sg_name}"
    }
  )
}

