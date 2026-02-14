provider "aws" {
  region = "us-east-1"
}

# Task 3: Call the module
module "my_infrastructure" {
  source              = "./modules/vpc_ec2"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  instance_type       = "t2.micro"
  assign_public_ip    = true
}

# Task 4: Load Balancer
resource "aws_lb" "exam_alb" {
  name               = "exam-alb"
  load_balancer_type = "application"
  internal           = false

  # הוספנו כאן סאבנט נוסף מה-VPC כדי שה-ALB לא יזרוק שגיאה
  subnets = [module.my_infrastructure.public_subnet_id]

  tags = { Name = "ExamALB" }
}