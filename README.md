# Jenkins CI/CD + Terraform IaC - Flask Cloud Task Manager

Automated pipeline: GitHub -> Jenkins -> Docker build -> pytest -> Terraform validate/plan/apply -> health check.

## Repository layout

```text
Jenkinsfile                      declarative pipeline (7 stages)
Dockerfile                       app image (from the Docker/K8s assignment)
app.py, requirements.txt         Flask Cloud Task Manager
tests/test_app.py                automated tests run inside the pipeline
terraform/
  versions.tf  variables.tf  main.tf  outputs.tf
  modules/app_container/         reusable module (network + container)
```

## Run Terraform manually

```bash
cd terraform
terraform init
terraform validate
terraform plan  -var "image_tag=latest"
terraform apply -var "image_tag=latest"
terraform destroy -var "image_tag=latest"
```

App URL after apply: http://localhost:8081
