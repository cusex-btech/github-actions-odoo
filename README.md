# Github Actions for Deploying Odoo and PostgreSQL

Deploy Odoo 16 and PostgreSQL on top Kubernetes cluster with ArgoCD

## Lifecycle

- **Staging**: Push Staging -> Push tag -> CI/CD deployment from tag -> Create Pull Request to production
- **Production**: Review Pull Request -> Approve Pull Request -> Approve CI Deployment -> CI/CD Production running
