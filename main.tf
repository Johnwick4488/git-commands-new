data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "santosh-new"
    values = ["ubuntu/images/hvm-ssd/*-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name      = "My-new-key"

  tags = {
    Name = var.ec2_name
  }
}
