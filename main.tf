terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~>3.0"
        }
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "data-etl-poc-rg" {
    name = var.rg_name
    location = var.location

    tags = {
        "Owner" = var.owner
        "project" = var.project
    }
}

module "data-factory" {
    source = "./modules/data-factory"

    rg_name = azurerm_resource_group.data-etl-poc-rg.name
    location = azurerm_resource_group.data-etl-poc-rg.location

    factory_name = var.factory_name
    # git_account_name = var.factory_git_account_name
    # git_branch = var.factory_git_branch
    # git_url = var.factory_git_url
    # git_repo_name = var.factory_git_repo_name
    # git_root_folder = var.factory_git_root_folder

    owner = var.owner
    project = var.project
}

module "data-lake" {
    source = "./modules/data-lake"

    rg_name = azurerm_resource_group.data-etl-poc-rg.name
    location = azurerm_resource_group.data-etl-poc-rg.location

    lake_name = var.lake_name
    sa_name = var.lake_sa_name
    account_tier = var.lake_account_tier
    account_replication_type = var.lake_account_replication_type
    account_kind = var.lake_account_kind
    is_hns_enabled = var.lake_is_hns_enabled
    data_share_file_path = var.data_share_file_path

    owner = var.owner
    project = var.project
}

