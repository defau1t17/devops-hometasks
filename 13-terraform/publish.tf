resource "github_repository_file" "name" {
  for_each            = {file1 = "config.tf", file2 = "vars.tf", file3 = "wordcloud.tf", file4 = "publish.tf"}
  repository          = var.github-repository
  file                = "13-terraform/${each.value}"
  content             = file("${each.value}")
  branch              = var.github-branch
  overwrite_on_create = true
}