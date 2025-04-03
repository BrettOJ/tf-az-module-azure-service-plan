# tf-az-module-azure-service-plan
Terraform module to create an Azure service plan


---
created: 2025-04-03T15:49:17 (UTC +08:00)
tags: []
source: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app
author: 
---

# azurerm_service_plan | Resources | hashicorp/azurerm | Terraform | Terraform Registry

> ## Excerpt
> Manages an App Service: Service Plan.

---
Manages an App Service: Service Plan.

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#example-usage)

```hcl
provider "azurerm" { features {} } resource "azurerm_resource_group" "example" { name = "example-resources" location = "West Europe" } resource "azurerm_service_plan" "example" { name = "example" resource_group_name = azurerm_resource_group.example.name location = azurerm_resource_group.example.location os_type = "Linux" sku_name = "P1v2" }
```

## [Arguments Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#arguments-reference)

The following arguments are supported:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#name-11) - (Required) The name which should be used for this Service Plan. Changing this forces a new Service Plan to be created.
    
-   [`location`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#location-4) - (Required) The Azure Region where the Service Plan should exist. Changing this forces a new Service Plan to be created.
    
-   [`os_type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#os_type-2) - (Required) The O/S type for the App Services to be hosted in this plan. Possible values include `Windows`, `Linux`, and `WindowsContainer`. Changing this forces a new resource to be created.
    
-   [`resource_group_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#resource_group_name-4) - (Required) The name of the Resource Group where the Service Plan should exist. Changing this forces a new Service Plan to be created.
    
-   [`sku_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#sku_name-2) - (Required) The SKU for the plan. Possible values include `B1`, `B2`, `B3`, `D1`, `F1`, `I1`, `I2`, `I3`, `I1v2`, `I1mv2`, `I2v2`, `I2mv2`, `I3v2`, `I3mv2`, `I4v2`, `I4mv2`, `I5v2`, `I5mv2`, `I6v2`, `P1v2`, `P2v2`, `P3v2`, `P0v3`, `P1v3`, `P2v3`, `P3v3`, `P1mv3`, `P2mv3`, `P3mv3`, `P4mv3`, `P5mv3`, `S1`, `S2`, `S3`, `SHARED`, `EP1`, `EP2`, `EP3`, `FC1`, `WS1`, `WS2`, `WS3`, and `Y1`.
    

___

-   [`app_service_environment_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#app_service_environment_id-3) - (Optional) The ID of the App Service Environment to create this Service Plan in.

-   [`premium_plan_auto_scale_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#premium_plan_auto_scale_enabled-2) - (Optional) Should automatic scaling be enabled for the Premium SKU Plan. Defaults to `false`. Cannot be set unless using a Premium SKU.
    
-   [`maximum_elastic_worker_count`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#maximum_elastic_worker_count-3) - (Optional) The maximum number of workers to use in an Elastic SKU Plan or Premium Plan that have `premium_plan_auto_scale_enabled` set to `true`. Cannot be set unless using an Elastic or Premium SKU.
    
-   [`worker_count`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#worker_count-3) - (Optional) The number of Workers (instances) to be allocated.
    
-   [`per_site_scaling_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#per_site_scaling_enabled-2) - (Optional) Should Per Site Scaling be enabled. Defaults to `false`.
    
-   [`zone_balancing_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#zone_balancing_enabled-2) - (Optional) Should the Service Plan balance across Availability Zones in the region. Changing this forces a new resource to be created.
    

-   [`tags`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#tags-4) - (Optional) A mapping of tags which should be assigned to the AppService.

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#attributes-reference)

In addition to the Arguments listed above - the following Attributes are exported:

-   [`id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#id-4) - The ID of the Service Plan.
    
-   [`kind`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#kind-4) - A string representing the Kind of Service Plan.
    
-   [`reserved`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#reserved-3) - Whether this is a reserved Service Plan Type. `true` if `os_type` is `Linux`, otherwise `false`.
    

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:

-   [`create`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#create-4) - (Defaults to 1 hour) Used when creating the Service Plan.
-   [`read`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#read-4) - (Defaults to 5 minutes) Used when retrieving the Service Plan.
-   [`update`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#update-4) - (Defaults to 1 hour) Used when updating the Service Plan.
-   [`delete`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#delete-4) - (Defaults to 1 hour) Used when deleting the Service Plan.

## [Import](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app#import)

AppServices can be imported using the `resource id`, e.g.

```shell
terraform import azurerm_service_plan.example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/serverFarms/farm1
```
