resource "alicloud_fc_function" "default" {
  service     = var.service
  name        = var.name
  description = var.description
  oss_bucket  = var.oss_bucket
  oss_key     = var.oss_key
  memory_size = var.memory_size
  runtime     = var.runtime
  handler     = var.handler
  environment_variables = {
    prefix = var.environment_variables["prefix"]
  }
}
