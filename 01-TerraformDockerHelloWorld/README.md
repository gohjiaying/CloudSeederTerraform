# Terraform Docker HelloWorld
This lab will show you how to:
1. Read and understand simple terraform configuration code
2. Use terraform commands to apply the code

# Prequsites
Install terraform by using [terraform getting started guide](https://learn.hashicorp.com/terraform/getting-started/install.html)

# Steps
1. Open main.tf

2. Read and understand the code. You will be able to answer the following questions
    - What is a terraform provider?
    - What is a terraform resource block?
3. Run terraform init
```
terraform init
```
    - Run to initalize a working directory containing terraform configuration.
    - Usually run once. Works like git init.
    - Notice the aditional hidden folder ".terraform" is created by terraform to organize packages that are required. In this case docker provider has been retrieved.
4. run `terraform validate`
4. run `terraform plan`
5. run `terraform apply`
6. run `terraform destroy`