terraform {
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.124"
    }
  }
}

provider "databricks" {
  host  = var.workspace_url
  token = var.databricks_token
}