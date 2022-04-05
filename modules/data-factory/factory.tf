resource "azurerm_data_factory" "data-etl-poc-factory" {
    name = var.factory_name
    location = var.location
    resource_group_name = var.rg_name

    # github_configuration {
    #     account_name = var.git_account_name
    #     branch_name = var.git_branch
    #     git_url = var.git_url
    #     repository_name = var.git_repo_name
    #     root_folder = var.git_root_folder
    # }

    tags = {
      "Owner" = var.owner
      "project" = var.project
    }

}