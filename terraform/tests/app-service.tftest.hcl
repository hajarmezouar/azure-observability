run "app_service_plan" {

  command = plan

  assert {
    condition     = module.app_service.default_hostname != ""
    error_message = "App Service hostname should not be empty."
  }

}