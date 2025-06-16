resource "aws_s3_bucket" "example" {
  bucket = var.bucket
  tags = var.tags
}
