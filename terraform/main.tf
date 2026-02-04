provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "fact_repo" {
  name                 = "fact-crescendo-repo"
  image_tag_mutability = "MUTABLE"
  force_delete         = true # Allows us to clean up easily later
}

output "repository_url" {
  value = aws_ecr_repository.fact_repo.repository_url
}
