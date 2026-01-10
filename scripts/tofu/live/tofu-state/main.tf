provider "aws" {
  region = "us-east-2"
}

module "state" {
  # On utilise le module local pour créer le bucket S3 et la table DynamoDB
  source = "github.com/FelixESIEE2024/lab5//scripts/tofu/modules/state-bucket"

  # On personnalise le nom pour qu'il soit unique
  name = "devops-td5-tofu-state-felix-test-depuis-git"
}