provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "vidhi_ec2" {
  ami           = "ami-0b32d400456908bf9"  # Amazon Linux 2 (use region-specific AMI)
  instance_type = "t2.micro"

  tags = {
    Name = "VidhiJenkinsEC2"
  }
}
