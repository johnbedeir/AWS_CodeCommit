resource "aws_codecommit_repository" "repo" {
  repository_name = "${var.project_name}-repo"
  description     = "CodeCommit repository for ${var.project_name}"
}