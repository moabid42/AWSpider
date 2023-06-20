/* STILL NEEDS SOME CONFIGURATIONS */

provider "aws" {
  region = "eu-central-1"
}

terraform {
  required_version = "~> 1.4.0"
}


resource "aws_vpc" "test" {
  cidr_block = "10.42.42.0/24"

  tags = {
    Name = "test"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.test.id}"

  tags = {
    Name = "test"
  }
}

resource "aws_subnet" "darknet" {
  vpc_id     = "${aws_vpc.test.id}"
  cidr_block = "10.42.42.0/25"

  tags = {
    Name = "test_darknet"
  }
}

resource "aws_subnet" "adjacent" {
  vpc_id     = "${aws_vpc.test.id}"
  cidr_block = "10.42.42.128/25"

  tags = {
    Name = "test_adjacent"
  }
}

resource "aws_route_table" "test" {
  vpc_id = "${aws_vpc.test.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags = {
    Name = "test"
  }
}

resource "aws_route_table_association" "adjacent" {
  subnet_id      = "${aws_subnet.adjacent.id}"
  route_table_id = "${aws_route_table.test.id}"
}
