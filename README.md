# Github Actions for Deploying Odoo and PostgreSQL

Deploy Odoo 16 and PostgreSQL on top Kubernetes cluster with ArgoCD

## Lifecycle

- **Staging**: Push Staging -> CI Staging success -> Create Pull Request to production
- **Production**: Review Pull Request -> Approve Pull Request -> Approve CI Production -> CI Production success
