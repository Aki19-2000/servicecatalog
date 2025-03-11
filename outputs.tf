output "iam_policy_arn" {
  value = module.iam_policy.iam_policy_arn
}

output "iam_role_arn" {
  value = module.iam_role.iam_role_arn
}

output "portfolio_id" {
  value = module.service_catalog_portfolio.portfolio_id
}

output "product_id" {
  value = module.service_catalog_product.product_id
}
