resource "aws_vpc" "test-vpc-01" {
  cidr_block = "${var.cidr-front}0.0/16"
  tags = {
    Name = "${var.envname}-vpc-01"
    Month = "2024-06"
  }
}

resource "aws_subnet" "test-subnet" {
  vpc_id     = aws_vpc.test-vpc-01.id
  cidr_block = "${var.cidr-front}1.0/24"
  tags = {
    Name = "${var.envname}-subnet"
  }
}

resource "aws_internet_gateway" "test-igw" {
  vpc_id = aws_vpc.test-vpc-01.id

  tags = {
    Name = "${var.envname}-igw"
  }
}

variable "envname"{
  type = string

}

variable "cidr-front"{
  type = string
  default = "10.0."
}