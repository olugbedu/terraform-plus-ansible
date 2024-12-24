terraform {
  required_version = "1.7.0"
}

module "ec2_instance" {
  source        = "./ec2"
  region        = "eu-west-1"
  ami           = "ami-0c55b159cbfafe1f0" # Replace with a valid AMI ID
  instance_name = "MySocials"
}

resource "local_file" "ip_address" {
  content  = module.ec2_instance.instance_public_ip
  filename = "${path.module}/instance_ip.txt"

  depends_on = [module.ec2_instance]
}
