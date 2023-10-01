resource "azuredevops_serviceendpoint_github" "serviceendpoint" {
    project_id = azuredevops_project.terraform_ado_project.id
    service_endpoint_name = "github-service-endpoint"

    auth_personal {
        personal_access_token = var.personal_access_token
    }
}