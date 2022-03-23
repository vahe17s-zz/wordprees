resource "aws_instance" "ec2" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  user_data = data.template_file.user_data.rendered

  network_interface {
    network_interface_id = aws_network_interface.network_interface.id
    device_index         = 0

  }

  tags = var.tags
}


resource "aws_network_interface" "network_interface" {
  subnet_id       = var.subnet_id
  security_groups = [aws_security_group.public_sg.id]
  tags = {
    Name = "primary_network_interface"
  }
}

data "template_file" "user_data" {
  template = file("${path.module}/user_data.tpl")

}

