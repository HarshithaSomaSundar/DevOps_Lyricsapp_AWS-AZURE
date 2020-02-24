resource "aws_instance" "my-test-instance-harshitha" {
  ami             = "ami-0dc34a024759117e0"
  instance_type   = "t2.micro"
  security_groups = ["Dev-ops"]
  key_name = "devops"
  user_data = <<-EOF
      #!/bin/bash
      sudo docker pull harshithass/dotnet:v2
      sudo docker run --name test --rm -d -i -t -p 5000:5000 harshithass/dotnet:v2
	EOF
  tags = {
    Name = "test-instance"
  }
}