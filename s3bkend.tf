terraform {
  backend "s3" {
    bucket = "cloud247-ecom-dev-101"
    key    = "dev/devenv.tfstate"
    region = "eu-north-1"
    dynamodb_table = "cloud247_dev_env_lock"
  }
}