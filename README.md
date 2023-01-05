# Github Actions for Deploying Odoo and PostgreSQL

Deploy Odoo 16 and PostgreSQL on top Kubernetes cluster with ArgoCD

## Code Lifecycle

- **Staging**: Push Staging -> Push tag -> CI/CD deployment from tag -> Create Pull Request to production
- **Production**: Review Pull Request -> Approve Pull Request -> Approve CI Deployment -> CI/CD Production running

## CI/CD Workflow

- **Staging**: Scan Addons Module -> Build & Push image -> Scan Image -> Deploy to Staging Namespace -> Create Pull Request to Production -> Notify Status via Telegram
- **Production**: Check if Pull Request is Merged -> Deploy to Production Namespace
