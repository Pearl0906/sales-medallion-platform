# Sales Medallion Platform

## Overview

The **Sales Medallion Platform** is an end-to-end data engineering project built on **Databricks**. It demonstrates how **Infrastructure as Code (IaC)** and **modern deployment practices** can be used to provision cloud resources and deploy a complete data pipeline.

The project follows the **Medallion Architecture (Bronze → Silver → Gold)** to transform raw sales data into clean, reliable, and business-ready datasets.

This project is being developed step by step to simulate how a real-world data engineering team builds, deploys, and manages data platforms.

---

## Project Objectives

- Provision Databricks workspace resources using **Terraform**.
- Deploy notebooks and workflows using **Databricks Asset Bundles**.
- Build an end-to-end Medallion Architecture data pipeline.
- Apply Infrastructure as Code (IaC) best practices.
- Demonstrate DevOps and Data Engineering concepts.

---

## Technology Stack 
| Technology | Purpose |
|------------|---------|
| Terraform | Infrastructure as Code |
| Databricks | Data engineering platform |
| Databricks Asset Bundles | Deploy notebooks and workflows |
| SQL | Data transformation |
| Git | Version control |
| GitHub | Source code management |
| PowerShell | Command-line automation |
| Visual Studio Code | Development environment |

---

## Repository Structure

```text
sales-medallion-platform/
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── locals.tf
│   ├── outputs.tf
│   └── environments/
│       ├── dev.tfvars
│       └── prod.tfvars
│
├── sql/
│   ├── 01_create_sales_table.sql
│   ├── 02_insert_sales_data.sql
│   ├── 03_bronze_sales.sql
│   │
│   ├── silver/
│   │   └── 04_silver_sales.sql
│   │
│   └── gold/
│       └── 05_gold_product_sales.sql
│
├── databricks_bundle/
│   └── resources/
│       └── sales_job.yml
│
├── docs/
│
├── .gitignore
├── databricks.yml
└── README.md
```

---

## Planned Architecture

```text
                 GitHub
                    │
                    ▼
        Databricks Asset Bundle
                    │
                    ▼
        Databricks Workspace
                    │
        ┌───────────┴───────────┐
        │                       │
        ▼                       ▼
   Terraform              SQL Notebooks
Infrastructure      (Bronze, Silver, Gold)
        │                       │
        └───────────┬───────────┘
                    ▼
            Medallion Pipeline
```

---

## Data Pipeline

The platform processes sales data through three layers:

### Bronze Layer
- Ingest raw CSV files into Databricks.
- Preserve the original source data.
- Perform minimal transformations.

### Silver Layer
- Clean and validate data.
- Remove duplicates.
- Standardize formats.
- Apply business rules.

### Gold Layer
- Create business-ready tables.
- Aggregate metrics.
- Generate reporting datasets.
- Support analytics and dashboards.

---

## Sample Datasets

The project will use the following datasets:

- Customers
- Orders
- Order Items
- Products
- Sales
- Stores

---

## Learning Goals

This project demonstrates practical experience with:

- Infrastructure as Code (Terraform)
- Databricks Workspace Management
- Databricks Asset Bundles
- SQL Data Engineering
- Medallion Architecture
- Git & GitHub
- DevOps Best Practices

---

## Future Enhancements

- CI/CD pipeline using GitHub Actions
- Multiple deployment environments (Development, Test, Production)
- Automated workflow deployment
- Monitoring and alerting
- Unit and integration testing

---

## Author

**Pearl Zinhle Shungube**

Data Engineering & Cloud Enthusiast

---

