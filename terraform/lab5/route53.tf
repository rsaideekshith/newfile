terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "devops-grooming"
    dynamodb_table = "route53-practice"
    key            = "sai.tfstate"
    region         = "ap-south-1"
  }
}

resource "aws_route53_zone" "main" {
  name = "sai.com"
}

resource "aws_route53_zone" "dev" {
  name = "dev.sai.com"

  tags = {
    Environment = "dev"
  }
}

resource "aws_route53_record" "dev-ns" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "dev.sai.com"
  type    = "NS"
  ttl     = "30"
  records = aws_route53_zone.dev.name_servers
}
