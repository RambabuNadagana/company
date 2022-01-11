provider"aws"{
profile="default"
region="us-east-2"
}
resource"aws_lb""slave"{
name ="test-lb-tf"
internal =false
load_balancer_type="application"
security_groups =["sg-0bb5391635b3c304e"]
subnets =["subnet-09521af8c6cfe39fb"]
}
resource"aws_lb_target_groups""slave"{
name = "tf-example-lb-tg"
port =80
protocal ="HTTP"
vpc_id = "vpc-0f607673eab7d2eb7"
}
