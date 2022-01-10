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
    eu-west-2  = "ami-082f73b60cd9b99b2"
    us-east-1  = "mi-00d4e9ff62bc40e03"
  }
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "../../.ssh/devopsmonks.pem.pub"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "../../.ssh/devopsmonks.pem"
}
variable "INSTANCE_USERNAME" {
  default = "myworld"
}