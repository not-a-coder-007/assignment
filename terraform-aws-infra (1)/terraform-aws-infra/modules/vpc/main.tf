variable "env" {
  type = string
}

resource "aws_vpc" "main" {
  cidr_block = "10.1.0.0/16"
  tags = {
    Name = "${var.env}-vpc"
  }
}

resource "aws_subnet" "public_a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.1.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.env}-public-subnet-a"
  }
}

resource "aws_subnet" "private_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.1.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "${var.env}-private-subnet-a"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.1.3.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.env}-public-subnet-b"
  }
}

resource "aws_subnet" "private_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.1.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "${var.env}-private-subnet-b"
  }
}