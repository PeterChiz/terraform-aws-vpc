# Tạo Vpc
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}

//subnet 1
resource "aws_subnet" "public_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet1_cidr_block
  availability_zone = var.public_subnet1_az
  tags = {
    Name = var.public_subnet1_name
  }
}

resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet1_cidr_block
  availability_zone = var.private_subnet1_az
  tags = {
    Name = var.private_subnet1_name
  }
}

//subnet 2
resource "aws_subnet" "public_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet2_cidr_block
  availability_zone = var.public_subnet2_az
  tags = {
    Name = var.public_subnet2_name
  }
}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet2_cidr_block
  availability_zone = var.private_subnet2_az
  tags = {
    Name = var.private_subnet2_name
  }
}

#tạo public route table để public subnet có thể ra ngoài internet
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "${var.vpc_name} -Public-Route-Table"
  }
}

#liên kết public subnet với public route table
resource "aws_route_table_association" "public_1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public.id
}