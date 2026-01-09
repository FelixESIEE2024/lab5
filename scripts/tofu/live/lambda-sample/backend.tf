terraform {
  backend "s3" {
    bucket         = "felixesiee2024-devops-tofu-state"
    key            = "td5/scripts/tofu/live/lambda-sample"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "felixesiee2024-devops-tofu-state"
  }
}