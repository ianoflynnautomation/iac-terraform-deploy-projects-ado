resource "azuredevops_git_repository" "imported_repo" {
    project_id      = azuredevops_project.terraform_ado_project.id
    name            = "Sample Terraform Project"
    initialization {
        init_type = "Clean"
    }
}