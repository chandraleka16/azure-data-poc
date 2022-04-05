variable "rg_name" {
    type = string
}

variable "location" {
    type = string
}

variable "lake_name" {
    type = string
}

variable "sa_name" {
    type = string  
}

variable "account_tier" {
    type = string
}

variable "account_replication_type" {
    type = string
}

variable "account_kind" {
    type = string
}

variable "is_hns_enabled" {
    type = bool
}

variable "owner" {
    type = string
}

variable "project" {
    type = string
}

# lake data share variables

variable "role_def" {
    type = string
    default = "Storage Blob Data Reader"
}

variable "dataset_name" {
    type = string
    default = "data-etl-poc-dataset-001"
}

variable "data_share_account_name" {
    type = string
    default = "data-etl-poc-lake-data-share-account-001"
}

variable "data_share_account_identity" {
    type = string
    default = "SystemAssigned"
}

variable "data_share_name" {
    type = string
    default = "data_etl_poc_lake_data_share_001"
}

variable "data_share_kind" {
    type = string
    default = "CopyBased"
}

variable "data_share_file_path" {
    type = string
    default = "dummy_logs.csv"
}