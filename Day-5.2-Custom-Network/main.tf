#Creating VPC ------>1
resource "aws_vpc" "dev" {
  cidr_block = "10.0.0.0/16"
tags = {
    Name = "Test-VPC"
}
}
#Creating Internet gateway ------>2
resource "aws_internet_gateway" "dev" {
    vpc_id = aws_vpc.dev.id 

    tags = {
        Name = "IG"
    }
}
#Creating public Subnet ---------->3
resource "aws_subnet" "dev" {
    vpc_id = aws_vpc.dev.id
cidr_block = "10.0.0.0/24"

tags = {
  Name= "Public Subnet"
}
}
#Creating Route Table  --------->4 
resource "aws_route_table" "dev" {
    vpc_id = aws_vpc.dev.id   # creating RT and selecting VPC
    route { # enetering edit routes 
        cidr_block = "0.0.0.0/0" #destination configuration
        gateway_id = aws_internet_gateway.dev.id #target configuration 
    }
    tags = {  # to assingn name of the RT
     Name = "pub route table"  
    }
}
# Subnet association ------->5
resource "aws_route_table_association" "dev" {
    route_table_id = aws_route_table.dev.id
    subnet_id = aws_subnet.dev.id
}
#Creating Security Group
resource "aws_security_group" "allow_tls" {
  name        = "firewall-2"
  description = "allow S_S_S"
  vpc_id      = aws_vpc.dev.id

  # Inbound rules for SSH
  ingress {
    description = "Allows SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Corrected field name from 'cidr_block' to 'cidr_blocks'
  }

  # Outbound rules (Allow all traffic)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Corrected field name from 'cidr_block' to 'cidr_blocks'
  }
}

# Creating Server 
resource "aws_instance" "dev" {
    ami = "ami-0ddfba243cbee3768"
    instance_type = "t2.micro"
    key_name = "KEYPAIR"
    subnet_id = aws_subnet.dev.id
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    tags = {
        name = "ec2-dev"
    }
  }  