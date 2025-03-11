resource "aws_servicecatalog_portfolio" "s3_bucket_portfolio" {
  name          = var.portfolio_name
  description   = "Portfolio to manage S3 bucket products"
  provider_name = var.owner_name
}

output "portfolio_id" {
  value = aws_servicecatalog_portfolio.s3_bucket_portfolio.id
}
