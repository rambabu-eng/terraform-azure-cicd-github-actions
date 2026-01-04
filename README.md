🚀 Azure Terraform CI/CD with GitHub Actions (OIDC)

📌 Overview

This project demonstrates a Terraform-based CI/CD pipeline that deploys Azure infrastructure using GitHub Actions with OIDC (Workload Identity Federation) — eliminating the need for client secrets and following modern cloud security best practices.

The pipeline automatically runs Terraform Plan on code changes and supports manual approval for Terraform Apply, simulating real-world enterprise workflows.

🛠️ Technologies Used

Cloud: Microsoft Azure

IaC: Terraform

CI/CD: GitHub Actions

Authentication: Azure AD OIDC (Workload Identity Federation)

Version Control: Git & GitHub

🧱 Azure Resources Deployed

Resource Group

Storage Account (secure, TLS enforced)

Log Analytics Workspace

All resources are deployed in Australia East and tagged consistently for governance.

📂 Repository Structure
.
├── infra/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── providers.tf
│   └── versions.tf
│
├── .github/
│   └── workflows/
│       ├── terraform-plan.yml
│       └── terraform-apply.yml
│
├── README.md
└── .gitignore

⚙️ CI/CD Workflow
🔹 Terraform Plan

Triggered automatically on:

Push to main

Pull Requests

Steps:

Azure login using OIDC

Terraform format, init, validate, and plan

🔹 Terraform Apply

Triggered manually using workflow_dispatch

Ensures controlled and safe infrastructure changes

Applies Terraform changes to Azure

🔐 Authentication & Security

Uses Azure AD Workload Identity Federation (OIDC)

No client secrets stored in GitHub

Least-privilege access via Azure RBAC

Secure-by-default Terraform configurations

📸 Screenshots

Screenshots of:

GitHub Actions pipeline success

Azure Portal deployed resources

are available in the screenshots/ folder.

🎯 Key Learning Outcomes

Built end-to-end Terraform CI/CD pipeline

Implemented secure Azure authentication using OIDC

Applied infrastructure governance and tagging

Debugged and resolved federated identity issues

Followed real-world DevOps approval workflows

👤 Author

Rambabu Katta
This project is part of my Azure Cloud & DevOps engineering learning journey, focused on building hands-on, job-ready projects using industry best practices.
