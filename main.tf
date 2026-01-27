# resource "aws_instance" "ec2" {
#     ami           = "ami-0c55b159cbfafe1f0"
#     instance_type = "t2.micro"

# }
resource "aws_s3_bucket" "bucket1" {
  bucket = "himansh-testbucket-27jan2026"

}
resource "aws_s3_bucket" "bucket2" {
  bucket = "himansh-testbucket-27jan2026-new"

}

resource "aws_vpc" "vpc1" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "somevpc"
    }
}

resource "aws_instance" "ec2-vm1" {
    ami           = "ami-055a9df0c8c9f681c"
    instance_type = "t2.micro"
    tags = {
      Name = "first-vm"
    }
  
}
