provider "aws" {
  region = "us-east-1"  # Change this to your region
}

module "iam_policy" {
  source = "./modules/iam-policy"
}

module "iam_role" {
  source       = "./modules/iam-role"
  policy_arn   = module.iam_policy.iam_policy_arn
}

module "service_catalog_portfolio" {
  source        = "./modules/service-catalog-portfolio"
  portfolio_name = "S3 bucket1"
  owner_name    = "Akshaya"
}

module "service_catalog_product" {
  source          
