resource "aws_servicecatalog_product" "example" {
  name          = "simples3bucket1"
  owner         = "akshaya"
  description   = "A simple S3 bucket product"
  distributor   = "example-distributor"
  support_description = "Example support description"
  support_email       = "support@example.com"
  support_url         = "https://example.com/support"
  type          = "CLOUD_FORMATION_TEMPLATE"

  provisioning_artifact_parameters {
    name           = "v1"
    description    = "Version 1"
    template_url   = "https://s3.amazonaws.com/akired18/template.yaml"
    type           = "CLOUD_FORMATION_TEMPLATE"
  }
}
