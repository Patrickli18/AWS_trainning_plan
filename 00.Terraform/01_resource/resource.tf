resource "aws_vpc" "test-vpc-01" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "test-vpc-01"
    Month = "2024-06"
  }

}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.test-vpc-01.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "my-test-subnet"
  }
}