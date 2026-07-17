run "network_plan" {

  command = plan

  assert {
    condition     = module.network.vnet_id != ""
    error_message = "Virtual Network should be created."
  }

  assert {
    condition     = module.network.subnet_frontend_id != ""
    error_message = "Frontend subnet should exist."
  }

  assert {
    condition     = module.network.subnet_backend_id != ""
    error_message = "Backend subnet should exist."
  }

}