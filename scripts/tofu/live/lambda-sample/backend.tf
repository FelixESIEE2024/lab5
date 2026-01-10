terraform {
  backend "s3" {
    bucket         = "devops-td5-tofu-state-felix-test-depuis-git"
    key            = "td5/scripts/tofu/live/lambda-sample"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "devops-td5-tofu-state-felix-test-depuis-git"
  }
}