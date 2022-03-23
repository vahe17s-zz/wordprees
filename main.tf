module "instance" {
  source        = "./instance"
  instance_ami = "ami-0d527b8c289b4af7f"
  instance_type = local.instance_config.instance_type
  vpc_id = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_id[0]
  tags = local.instance_config.instance_tags

}

module "vpc" {
  source     = "./vpc"
  cidr_block = local.vpc_config["cidr_block"]
}

locals {
  vpc_config = {
    cidr_block = "10.10.0.0/16"
  }
  instance_config = {
    instance_type = "t2.micro"
    main_volume = "8"
    instance_tags = {
      Owner = "Vahe Stepanyan"
      Name = "TERRAFORM-INSTANCE-TEST"
    }
  }
}