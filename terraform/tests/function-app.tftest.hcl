run "function_app_plan" {

  command = plan

  assert {
    condition     = module.function_app.default_hostname != ""
    error_message = "Function App hostname should not be empty."
  }

}