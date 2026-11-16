locals {
  comman_name = "${var.project}-${var.environment}" # roboshop-dev 
  comman_tags = {
    Project     = var.project
    Environment = var.environment
    Terraform   = true
    Name        = local.comman_name

  }
}
