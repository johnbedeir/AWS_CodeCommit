output "s3_bucket_name" {
  value = aws_s3_bucket.artifact_bucket.bucket
}

output "codecommit_repo_name" {
  value = aws_codecommit_repository.repo.repository_name
}

output "codepipeline_name" {
  value = aws_codepipeline.pipeline.name
}
