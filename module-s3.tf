module "s3_bucket" {
  # By default, Terraform pulls from the "Terraform Registry".  For example, this module uses this: https://registry.terraform.io/modules/terraform-aws-modules/s3-bucket/aws/latest?tab=inputs
  source = "terraform-aws-modules/s3-bucket/aws"
  # You could also specify this with a github (or other) URL:
  # source = github.com/terraform-aws-modules/terraform-aws-s3-bucket

  bucket = "tf-se-lab-${replace(lower(var.owner), "/\\s+/", "-")}"
  acl    = "private"

  versioning = {
    enabled = true
  }
}
