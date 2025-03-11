resource "aws_iam_role" "sc_launch_s3_product_role" {
  name               = "SCLaunch-S3product1"
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "GivePermissionsToServiceCatalog",
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "servicecatalog.amazonaws.com"
        },
        "Action" : "sts:AssumeRole"
      },
      {
        "Effect" : "Allow",
        "Principal" : {
          "AWS" : "arn:aws:iam::510278866235:root"
        },
        "Action" : "sts:AssumeRole",
        "Condition" : {
          "StringLike" : {
            "aws:PrincipalArn" : [
              "arn:aws:iam::510278866235:role/TerraformEngine/TerraformExecutionRole*",
              "arn:aws:iam::510278866235:role/TerraformEngine/ServiceCatalogExternalParameterParserRole*",
              "arn:aws:iam::510278866235:role/TerraformEngine/ServiceCatalogTerraformOSParameterParserRole*"
            ]
          }
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "attach_policy_to_role" {
  policy_arn = var.policy_arn
  role       = aws_iam_role.sc_launch_s3_product_role.name
}

output "iam_role_arn" {
  value = aws_iam_role.sc_launch_s3_product_role.arn
}
