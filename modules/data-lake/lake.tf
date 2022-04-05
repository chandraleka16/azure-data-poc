resource "azurerm_storage_account" "data-etl-poc-sa" {
    name = var.sa_name
    resource_group_name = var.rg_name
    location = var.location
    account_tier = var.account_tier
    account_replication_type = var.account_replication_type
    account_kind = var.account_kind
    is_hns_enabled = var.is_hns_enabled

    tags = {
        "Owner" = var.owner
        "project" = var.project
    }
}

resource "azurerm_storage_data_lake_gen2_filesystem" "data-etl-poc-lake" {
    name = var.lake_name
    storage_account_id = azurerm_storage_account.data-etl-poc-sa.id
}

# module "lake-data-share" {
#     source = "./modules/data-share"

#     location = var.location
#     rg_name = var.rg_name

#     lake_name = azurerm_storage_data_lake_gen2_filesystem.data-etl-poc-lake.name
#     lake_sa_id = azurerm_storage_account.data-etl-poc-sa.id
#     lake_role_def = var.role_def
#     lake_dataset_name = var.dataset_name
#     lake_data_share_account_name = var.data_share_account_name
#     lake_data_share_account_identity = var.data_share_account_identity
#     lake_data_share_name = var.data_share_name
#     lake_data_share_kind = var.data_share_kind
#     lake_data_share_file_path = var.data_share_file_path

#     owner = var.owner
#     project = var.project
# }