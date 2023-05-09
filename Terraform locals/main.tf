provider "aws" {
    region = "us-east-1"

}

locals {
    env = "rudra"
    c = "two things"
    b=  "sadgcvj"

   
}

resource "aws_vpc" "rudra-vpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
      Name = "${local.env}Terraform-vpc"
    }

  
}

# resource "aws-subnet" "rudra-subnet" {
#     vpc_id = aws_vpc.rudra-vpc.id
#     cidr-block = "10.0.0.0/24"
#     tags = {
#         name  = "${local.env}terraform-subnet"
#     }
        
    
  
# }

# resource "aws_instance" "Ec2" {

#     ami = "ami-0889a44b331db0194"
#     instance_type = "t2.micro"
#     subnet_id = aws_subnet.terraform-subnet.id

#     tags= {
#         Name = "${local.env}terraform-ec2"
#     }
  
# }
