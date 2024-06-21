resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("${path.module}/deployer-key.pub")
}

resource "aws_instance" "app" {
  ami           = "ami-0c55b159cbfafe1f0"  # Check for the latest Ubuntu AMI in your region
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = "UbuntuServer"
  }
}

