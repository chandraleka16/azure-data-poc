output "resource-group-id" {
    value = "${azurerm_resource_group.data-etl-poc-rg.id}"
}
output "factory-id" {
    value = "${module.data-factory.factory_id}"
}

output "lake-id" {
    value = "${module.data-lake.lake_id}"
}