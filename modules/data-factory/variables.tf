variable "rg_name" {
    type = string
}

variable "location" {
    type = string
}

variable "factory_name" {
    type = string
}

variable "git_account_name" {
    type = string
    default = "chandraleka16"
}

variable "git_branch" {
    type = string
    default = "main"
}

variable "git_url" {
    type = string
    default = "https://github.com/chandraleka16/azure-data-poc"
}

variable "git_repo_name" {
    type = string
    default = "azure-data-poc"
}

variable "git_root_folder" {
    type = string
    default = "/"
}

variable "owner" {
    type = string
}

variable "project" {
    type = string
}
