#  module "project_ec2" {
#    source             = "./modules/ec2"
#    name               = local.name
#    account            = data.aws_caller_identity.current.account_id
#    aws_ami            = data.aws_ami.amazon_linux_2.id
#    private_subnet_ids = module.vpc.private_subnet_ids
#    vpc_id             = module.vpc.vpc_id
#  }

module "project_ec2" {
  source             = "./modules/ec2"
  name               = local.name
  account            = data.aws_caller_identity.current.account_id
  aws_ami            = "ami-0afbbb3deeac3d738"
  private_subnet_ids = module.vpc.private_subnet_ids
  vpc_id             = "vpc-080cfcd3990a1577a" #module.vpc.vpc_id
}

# ami-02390ef9863c59210 us-east-1
# ami-0afbbb3deeac3d738 us-east-2
