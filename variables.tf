variable "aws_region" {
  default = "us-east-1"
}

variable "access_key" {}
variable "secret_key" {}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-06b6e5225d1db5f46"  # Amazon Linux 2 (us-east-1)
}
