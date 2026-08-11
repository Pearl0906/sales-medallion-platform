variable "environment" {
  type        = string
  description = "deployment environment"
}

variable "workspace_url" {
  type        = string
  description = "Databricks workspace URL"
}

variable "databricks_token" {
  type        = string
  sensitive   = true
  description = "Databricks API token"
}