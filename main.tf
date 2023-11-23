# S3 Bucket for TF state file
resource "aws_s3_bucket" "tf_state_bucket" {
  bucket = "${var.resource_prefix}-tfstate-storage"
  tags = {
    tf_managed = "true"
  }
}
resource "aws_s3_bucket_versioning" "tf_state_bucket_versioning" {
  bucket = aws_s3_bucket.tf_state_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}