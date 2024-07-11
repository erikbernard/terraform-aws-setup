provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "ittalent_dev_ec2" {
    ami = "ami-06c68f701d8090592"
    instance_type = "t2.micro"
    tags = {
        Name = "ItTalentEC2Instance"
    }
}

resource "aws_s3_bucket" "ittalent_dev" {
    bucket = "erik_dev"
    tags = {
        Name = "ItTalentBucket"
        Environment = "Test"
    }
}