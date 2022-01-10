
variable "AWS_REGION" {
  default = "ap-south-1"
}
variable "AWS_PROFILE" {
  default = "default"
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-south-1 = "ami-0567e0d2b4b2169ae"
    eu-west-2  = "ami-0fdf70ed5c34c5f52"
    us-east-1  = "ami-083654bd07b5da81d"

  }
}