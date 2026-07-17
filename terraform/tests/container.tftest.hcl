run "container_plan" {

  command = plan

  assert {
    condition     = module.container.fqdn != ""
    error_message = "Container Instance should expose an FQDN."
  }

}