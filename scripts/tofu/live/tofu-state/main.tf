provider "aws" {
  region = "us-east-2"
}

module "state" {
  source = "github.com/FelixESIEE2024/lab5//scripts/tofu/modules/state-bucket"

  # Bucket unique déjà créé
  name = "felixesiee2024-devops-tofu-state"
}