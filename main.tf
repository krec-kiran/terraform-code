resource "aws_instance" "example" {
  ami           = "ami-09a2a0f7d2db8baca"
  instance_type = "t2.micro"
  tags = {
    Name = "my-vpc-resource"
  }
}

resource "aws_vpc" "my_first_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my_first_vpc"
  }
}

resource "aws_subnet" "main" {
  vpc_id = aws_vpc.my_first_vpc.id
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "my_first_vpc_subnet"
  }
}