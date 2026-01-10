

terraform {
 	backend "s3" {
 		bucket         = "devops-td5-tofu-state-felix-test-depuis-git"
 		key            = "lambda-sample/terraform.tfstate"
 		region         = "us-east-2"
 		encrypt        = true
 		dynamodb_table = "devops-td5-tofu-state-felix-test-depuis-git"
 	}
 }
