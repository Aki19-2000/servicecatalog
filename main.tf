provider "aws" {
  region = "us-east-1"  # Change this to your AWS region
}

module "iam_policy" {
  source = "./modules/iam-policy"
}

module "iam_role" {
  source = "./modules/iam-role"  # No need to pass policy_arn anymore
}

module "service_catalog_portfolio" {
  source         = "./modules/service-catalog-portfolio"
  portfolio_name = "S3 bucket1"
  product_owner  = "Akshaya"
}

module "service_catalog_product" {
  source           = "./modules/service-catalog-product"
  portfolio_id     = module.service_catalog_portfolio.portfolio_id
  product_name     = "Simple S3 bucket1"
  owner_name       = "Akshaya"
  product_version  = "v1"
}
