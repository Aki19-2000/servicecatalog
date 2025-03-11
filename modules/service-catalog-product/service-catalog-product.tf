resource "aws_servicecatalog_product" "simple_s3_bucket_product" {
  name          = var.product_name
  owner         = var.product_owner
  description   = "A simple S3 bucket product"
  product_type  = "EXTERNAL"
  provisioning_artifact {
    name        = "v1"
    description = "Initial version"
    type        = "CLOUD_FORMATION_TEMPLATE"
    template_url = "https://github.com/Aki19-2000/servicecatalog/raw/main/s3bucket.tar.gz"  # Correct raw URL
  }

  portfolio_id = var.portfolio_id
}

output "product_id" {
  value = aws_servicecatalog_product.simple_s3_bucket_product.id
}
