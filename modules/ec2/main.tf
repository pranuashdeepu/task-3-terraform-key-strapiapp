resource "aws_instance" "strapi" {
  ami                    = "ami-0f5ee92e2d63afc18"
  instance_type          = "t2.micro"
  key_name               = var.key_name
  vpc_security_group_ids = [var.security_group_id]

  user_data = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install -y nodejs npm
    sudo npm install -g create-strapi-app
    npx create-strapi-app my-strapi --quickstart --skip-cloud
  EOF

  tags = {
    Name = "Strapi-EC2"
  }
}

