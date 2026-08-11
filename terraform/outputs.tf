output "workspace_directories" {
  description = "Workspace directories created by Terraform."

  value = [
    for directory in databricks_directory.directories :
    directory.path
  ]
}