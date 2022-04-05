# resource group variables

variable "rg_name" {
    type = string
}

variable "location" {
    type = string
}


# tag variables

variable "owner" {
    type = string
}

variable "project" {
    type = string
}

# factory variables

variable "factory_name" {
    type = string
}

# variable "factory_git_account_name" {
#     type = string
# }

# variable "factory_git_branch" {
#     type = string
# }

# variable "factory_git_url" {
#     type = string
# }

# variable "factory_git_repo_name" {
#     type = string
# }

# variable "factory_git_root_folder" {
#     type = string
# }


# lake variables

variable "lake_name" {
    type = string
}

variable "lake_sa_name" {
    type = string  
}

variable "lake_account_tier" {
    type = string
}

variable "lake_account_replication_type" {
    type = string
}

variable "lake_account_kind" {
    type = string
}

variable "lake_is_hns_enabled" {
    type = bool
}

variable "data_share_file_path" {
    type = string
}