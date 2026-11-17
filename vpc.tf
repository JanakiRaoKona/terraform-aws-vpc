resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = merge(
    var.vpc_tags,
    local.comman_tags
  )
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    var.igw_tags,
    local.comman_tags
  )
}

resource "aws_subnet" "main" {
  count                   = length(var.public_subnet_cidrs)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidrs[count.index]
  availability_zone       = local.az_zones[count.index] # us-east-1a
  map_public_ip_on_launch = true

  tags = merge(
    var.public_subnet_tags,
    local.comman_tags, # roboshop-dev 
    {
      Name = "${local.comman_tags}-public-${split("-", local.az_zones)[-1]}" # roboshop-dev-public-1a

    }

  )
}
