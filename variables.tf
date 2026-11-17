# mandatory 
variable "project" {
  type = string

}
variable "environment" {
  type = string

}
# optional 
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
# optional 
variable "vpc_tags" {
  type    = map(any)
  default = {}

}

variable "igw_tags" {
  type    = map(any)
  default = {}

}

variable "public_subnet_tags" {
  type    = map(any)
  default = {}

}

variable "public_subnet_cidrs" {
  type    = list(any)
  default = ["10.0.1.0/24", "10.0.2.0/24"]

}

variable "private_subnet_cidrs" {
  type    = list(any)
  default = ["10.0.10.0/24", "10.0.12.0/24"]

}

variable "database_subnet_cidrs" {
  type    = list(any)
  default = ["10.0.20.0/24", "10.0.22.0/24"]

}
