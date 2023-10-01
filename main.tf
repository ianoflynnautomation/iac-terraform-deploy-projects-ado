terraform {
    required_providers {
        azuredevops = {
            source = "microsoft/azuredevops"
            version = ">= 0.0.1"
            }
    }
}

provider "azuredevops"{
    org_service_url = var.orgazation_url
    personal_access_token = var.personal_access_token

}

resource "azuredevops_project" "terraform_ado_project" {
    name                = var.project_name
    description         = var.description
    visibility          = var.visibility
    version_control     = var.version_control
    work_item_template  = var.work_item_template

    features = {
        "boards" = "enabled"
        "repositories" = "enabled"
        "pipelines" = "enabled"
        "testplans" = "enabled"
        "artifacts" = "enabled"
    }
}