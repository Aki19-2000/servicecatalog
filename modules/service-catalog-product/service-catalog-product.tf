resource "aws_servicecatalog_product" "simple_s3_bucket_product" {
  name          = var.product_name
  owner         = var.product_owner
  description   = "A simple S3 bucket product"
  distributor   = "example-distributor"
  support_description = "Example support description"
  support_email       = "support@example.com"
  support_url         = "https://example.com/support"
  type          = "CLOUD_FORMATION_TEMPLATE"
  product_type  = "EXTERNAL"
  provisioning_artifact_parameters {
    name           = "v1"
    description    = "Version 1"
    info           = {
      "LoadTemplateFromURL" =  "https://github.com/Aki19-2000/servicecatalog/raw/main/s3bucket.tar.gz"
    }
    type           = "EXTERNAL"
  }
}
  
output "product_id" {
  value = aws_servicecatalog_product.simple_s3_bucket_product.id
}
