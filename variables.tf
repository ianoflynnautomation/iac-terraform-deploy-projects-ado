variable "project_name" {
    description = "The name of the project"
    type = string
    default = "Sample Terraform Project"
}

variable "description" {
    description = "The description of the project"
    type = string
    default = "Sample Azure DevOps Project Created Using Terraform"
}

variable "visibility" {
    description = "The visibility of the project"
    type = string
    default = "private"
    # Options: private, public
}

variable "version_control" {
    description = "The version control type of the project"
    type = string
    default = "Git"
    # Options: Git, Tfvc
}

variable "work_item_template" {
    description = "The work item template of the project"
    type = string
    default = "Agile"
    # Options: Agile, Basic, Scrum, CMMI
}

variable orgazation_url {
    description = "The organization url"
    type = string
}

variable personal_access_token {
    description = "The personal access token"
    type = string
    sensitive = true
}

variable "github_repo_url" {
    description = "The github repo url"
    type = string
}