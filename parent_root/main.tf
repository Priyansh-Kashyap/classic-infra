module "rg-mod" {

    source = "../modules/azurerm_resource_group"

    rg_name  = var.rg_name
    rg_location = var.rg_location
  
}


module "stg-mod" {
  
  source = "../modules/azurerm_storage_account"

  depends_on = [ module.rg-mod ]
  stg_name = var.stg_name
  resource_group_name = var.resource_group_name
  stg_location = var.stg_location
 
}




