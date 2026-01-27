# resource "aws_instance" "ec2" {
#     ami           = "ami-0c55b159cbfafe1f0"
#     instance_type = "t2.micro"
  
# }
resource "aws_s3_bucket" "bucket1" {
    bucket = "himansh-testbucket-27jan2026"
  
}