locals {
  project_name = "sales-medallion"

  workspace_root = "/Shared/${local.project_name}"

  workspace_directories = [
    local.workspace_root,
    "${local.workspace_root}/sql",
    "${local.workspace_root}/docs",
    "${local.workspace_root}/data"
  ]
}