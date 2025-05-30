variable "aws_region" {
  default = "us-east-1"
}

variable "access_key" {}
variable "secret_key" {}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-0ad9bb78f6529a788"  # Amazon Linux 2 (us-east-1)
}
