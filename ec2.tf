resource "aws_instance" "amazon_linux_instance" {
  ami           = "ami-02e3c96eaee2fe306"
  instance_type = "t3.micro"

  tags = {
    Name = "AmazonLinuxInstance"
  }
}
