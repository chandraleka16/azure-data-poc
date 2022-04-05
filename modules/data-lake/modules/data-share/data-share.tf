data "azuread_service_principal" "data-etl-poc-lake-principal" {
  display_name = azurerm_data_share_account.data-etl-poc-share-account.name
}

resource "azurerm_role_assignment" "data-etl-poc-lake-role" {
  scope                = var.lake_sa_id
  role_definition_name = var.lake_role_def
  principal_id         = data.azuread_service_principal.data-etl-poc-lake-principal.object_id
}

resource "azurerm_data_share_account" "data-etl-poc-share-account" {
    name = var.lake_data_share_account_name
    location = var.location
    resource_group_name = var.rg_name
    identity {
        type = var.lake_data_share_account_identity
    }

    tags = {
        "owner" = var.owner
        "project" = var.project
    }
}

resource "azurerm_data_share" "data-etl-poc-share" {
    name = var.lake_data_share_name
    account_id = azurerm_data_share_account.data-etl-poc-share-account.id
    kind = var.lake_data_share_kind
}

resource "azurerm_data_share_dataset_data_lake_gen2" "data-etl-poc-dataset" {
    name = var.lake_dataset_name
    share_id = azurerm_data_share.data-etl-poc-share.id
    storage_account_id = var.lake_sa_id
    file_system_name = var.lake_name
    file_path = var.lake_data_share_file_path
    depends_on = [
        azurerm_role_assignment.data-etl-poc-lake-role,
    ]
}