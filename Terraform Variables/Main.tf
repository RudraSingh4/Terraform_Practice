provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web" {
    ami = "ami-0889a44b331db0194"
    count =  var.instance_count
    instance_type = var.instance_type 
    # subnet_id = "subnet-0962069167a59d185"
    tags = {
      Name = "terraform_Ec2"
    }
    volume_tags = {
      Name = "terraform_Ec2"
    }
}

