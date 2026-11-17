output "vpc_id" {
  value = aws_vpc.main.id
}

output "az_zones" {
  value = aws_availability_zones.available
}
