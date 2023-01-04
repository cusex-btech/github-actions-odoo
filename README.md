# Github Actions for Deploying Odoo and PostgreSQL

Deploy Odoo 16 and PostgreSQL on top Kubernetes cluster with ArgoCD

## Lifecycle

- **Staging**: Push Staging -> CI Staging success -> Pull Request to production
- **Production**: Approve Pull Request -> Approve CI Production -> CI Production success
