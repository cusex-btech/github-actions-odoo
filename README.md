# Github Actions for Deploying Odoo and PostgreSQL

Deploy Odoo 16 and PostgreSQL on top Kubernetes cluster with ArgoCD & Flux

## Code Lifecycle

- **Staging**: Push Staging -> Push tag -> CI/CD deployment from tag -> Create Pull Request to production
- **Production**: Review Pull Request -> Approve Pull Request -> Approve CI Deployment -> CI/CD Production running

## CI/CD Workflow

- **Staging**: Scan Addons Module -> Build & Push image -> Scan Image -> Deploy to Staging Namespace -> Create Pull Request to Production -> Notify Status via Telegram
- **Production**: Check if Pull Request is Merged -> Deploy to Production Namespace

## Github Actions Workflows

There are 4 workflows that can be used, with detailed yaml files in the following path :

### A. Deploy Odoo Manifests with ArgoCD
- .github/argocd/staging-manifest.yaml
- .github/argocd/production-manifest.yaml

### B. Deploy Odoo Helm with ArgoCD
- .github/argocd/staging-helm.yaml
- .github/argocd/production-helm.yaml

### C. Deploy Odoo Manifests with Flux
- .github/flux/staging-manifest.yaml
- .github/flux/production-manifest.yaml

### D. Deploy Odoo Helm with Flux
- .github/flux/staging-helm.yaml
- .github/flux/production-helm.yaml

## How To Use

1. Copy the Workflows you want to use to `.github/workflows`
2. Trigger CI/CD <br>
    2.1 Make any changes <br>
    2.2 Create Git Tag and Push to Repo <br>
    ```
    git add .
    git commit -m "any commit"
    git tag v1.x.x
    git push origin v1.x.x
    git push origin staging
    ```