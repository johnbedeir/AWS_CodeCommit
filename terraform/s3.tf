resource "aws_s3_bucket" "artifact_bucket" {
  bucket = "${var.project_name}-artifacts"
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "artifact_bucket_versioning" {
  bucket = aws_s3_bucket.artifact_bucket.bucket

  versioning_configuration {
    status = "Enabled"
  }

}

# resource "aws_s3_bucket_acl" "artifact_bucket_acl" {
#   bucket = aws_s3_bucket.artifact_bucket.bucket
#   acl    = "private"
# }

resource "aws_s3_bucket_policy" "artifact_bucket_policy" {
  bucket = aws_s3_bucket.artifact_bucket.bucket

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          "AWS" = "arn:aws:iam::${var.account_id}:role/${var.role_name}"
        }
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject"
        ]
        Resource = "arn:aws:s3:::${aws_s3_bucket.artifact_bucket.bucket}/*"
      }
    ]
  })
}