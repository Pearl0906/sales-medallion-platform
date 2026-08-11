resource "databricks_directory" "directories" {
  for_each = toset(local.workspace_directories)

  path = each.value
}

resource "databricks_notebook" "sales_sql" {
  path     = "${local.workspace_root}/sql/01_create_sales_table"
  language = "SQL"
  source   = "../sql/01_create_sales_table.sql"
}

resource "databricks_notebook" "sales_data_sql" {
  path     = "${local.workspace_root}/sql/02_insert_sales_data"
  language = "SQL"
  source   = "../sql/02_insert_sales_data.sql"
}

resource "databricks_notebook" "bronze_layer" {
  path     = "${local.workspace_root}/sql/03_bronze_sales"
  language = "SQL"
  source   = "../sql/03_bronze_sales.sql"
}

resource "databricks_notebook" "silver_layer" {
  path     = "${local.workspace_root}/sql/silver/04_silver_sales"
  language = "SQL"
  source   = "../sql/silver/04_silver_sales.sql"
}

resource "databricks_notebook" "gold_layer" {
  path     = "${local.workspace_root}/sql/gold/05_gold_product_sales"
  language = "SQL"
  source   = "../sql/gold/05_gold_product_sales.sql"
}

resource "databricks_workspace_file" "docs" {
  path   = "${local.workspace_root}/docs/doc_names"
  source = "../docs/doc_names.md"
}



