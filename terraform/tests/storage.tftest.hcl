run "storage_plan" {

  command = plan

  assert {
    condition     = module.storage.storage_account_name != ""
    error_message = "Storage Account name should not be empty."
  }

}