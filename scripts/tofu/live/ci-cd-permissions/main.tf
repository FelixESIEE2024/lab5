provider "aws" {
  region = "us-east-2"
}




#ETABLIT LA RELATION DE CONFIANCE AWSH GITHUB 
module "oidc_provider" {
  # OIDC provider hosted on GitHub (your repo path)
  source = "github.com/FelixESIEE2024/lab5//scripts/tofu/modules/github-aws-oidc"

  provider_url = "https://token.actions.githubusercontent.com"
}



#GESTION DES DROITS
module "iam_roles" {
  # IAM roles for GitHub Actions (your repo path)
  source = "github.com/FelixESIEE2024/lab5//scripts/tofu/modules/gh-actions-iam-roles"

  name              = "lambda-sample"
  oidc_provider_arn = module.oidc_provider.oidc_provider_arn

  enable_iam_role_for_testing = true
  enable_iam_role_for_plan    = true
  enable_iam_role_for_apply   = true

  # Votre dépôt GitHub
  github_repo      = "FelixESIEE2024/lab5"
  lambda_base_name = "lambda-sample"

  # Backend state déjà créé
  tofu_state_bucket         = "felixesiee2024-devops-tofu-state"
  tofu_state_dynamodb_table = "felixesiee2024-devops-tofu-state"
}
