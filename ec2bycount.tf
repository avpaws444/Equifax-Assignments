/*Credentials have been
provided in CLI by ussing aws configure*/


provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "Instantfor_AS1" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  availability_zone = "us-east-1a"
  instance_type = "t2.micro"
  count = 3
  tags = {
    Name  = "assignment"

  }

}     
