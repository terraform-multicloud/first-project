# resource "aws_instance" "ec2" {
#     ami           = "ami-0c55b159cbfafe1f0"
#     instance_type = "t2.micro"

# }
resource "aws_s3_bucket" "bucket1" {
  bucket = "himansh-testbucket-27jan2026"
  depends_on = [ aws_vpc.vpc1 ]

}
resource "aws_s3_bucket" "bucket2" {
  bucket = "himansh-testbucket-27jan2026-new"
  depends_on = [ aws_vpc.vpc1 ]

}
# creating a VPC
resource "aws_vpc" "vpc1" {
    cidr_block = var.vpc-cidr
    tags = {
      Name = var.vpc-name
    }
}


# creating a subnet
resource "aws_subnet" "subnet1" {
    vpc_id     = aws_vpc.vpc1.id
    cidr_block = "10.0.1.0/24"
    tags = {
        Name = "${aws_vpc.vpc1.tags["Name"]}-subnet1"

    }
}

resource "aws_instance" "ec2-vm1" {
    ami           = var.vm-ami
    instance_type = var.vm-type
    subnet_id = "subnet-01aac3d16b5e7d1ad"
    tags = {
      Name = "first-vm"
    }
    depends_on = [ aws_vpc.vpc1 ]
  
}
