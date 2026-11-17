locals {
  comman_name = "${var.project}-${var.environment}" # roboshop-dev 
  comman_tags = {
    Project     = var.project
    Environment = var.environment
    Terraform   = true
    Name        = local.comman_name

  }
  az_zones = slice(data.aws_availability_zones.available.names, 0, 2)
}
