provider "aws" {
  access_key = "AWS ACCESS KEY"
  secret_key = "AWS SECRET KEY"
  region = "ap-southeast-1"
}

resource "aws_instance" "my-first-server" {
  ami           = "ami-085925f297f89fce1"
  instance_type = "t2.micro"
}
