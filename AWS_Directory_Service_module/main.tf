resource "aws_directory_service_directory" "directory_service" {
    name = var.directory_service_name
    password = var.directory_service_password

    vpc_settings {
    vpc_id     = aws_vpc.directory_service_vpc.id
    subnet_ids = [aws_subnet.directory_service_subnet1.id, aws_subnet.directory_service_subnet2.id]
  }
}

resource "aws_vpc" "directory_service_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "directory_service_subnet1" {
  vpc_id            = aws_vpc.directory_service_vpc.id
  cidr_block        = var.subnet1_cidr_block
  availability_zone = var.subnet1_availability_zone
}

resource "aws_subnet" "directory_service_subnet2" {
  vpc_id            = aws_vpc.directory_service_vpc.id
  cidr_block        = var.subnet2_cidr_block
  availability_zone = var.subnet2_availability_zone
}