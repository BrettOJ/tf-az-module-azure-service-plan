locals {
  tags = {
    environment = "production"
    owner       = "team-example"
}
}

module "azurerm_service_plan"  {
    source = "git::https://github.com/BrettOJ/tf-az-module-azure-service-plan?ref=main"
    name                = var.name
    location            = var.location
    resource_group_name = var.resource_group_name
    os_type             = var.os_type
    sku_name = var.sku_name
    app_service_environment_id = var.app_service_environment_id
    premium_plan_auto_scale_enabled = var.premium_plan_auto_scale_enabled
    maximum_elastic_worker_count = var.maximum_elastic_worker_count
    worker_count = var.worker_count
    per_site_scaling_enabled = var.per_site_scaling_enabled
    zone_balancing_enabled = var.zone_balancing_enabled
    tags = local.tags
}