# Terraform Docker HelloWorld
This lab will show you how to:
1. Read and understand simple terraform configuration code
2. Use terraform commands to apply the code


## Workshop Reference 
![alt text](https://github.com/gohjiaying/CloudSeedersTerraform/blob/master/images/demo1explanation.png "Workshop 1 Architecture Reference")

---
## Prequsites
Install terraform by using [terraform getting started guide](https://learn.hashicorp.com/terraform/getting-started/install.html)


---
## Steps
1. Open main.tf

2. Read and understand the code. You will be able to answer the following questions
    - What is a terraform provider?
    - What is a terraform resource block?

3. Run `terraform init` on terminal
    - Run to initalize a working directory containing terraform configuration.
    - Usually run once. Works like git init.
    - Notice this terraform command creates an aditional hidden folder ".terraform" to organize packages that are required. In this case docker provider has been retrieved.

4. Run `terraform validate` on terminal
    - Command for checking syntax of code
    - For validaing configurations files

5. Run `terraform plan` on terminal
    - Generates and show an execution plan
    - Convenient to check if potential changes matches expectations
    - The optional -out argument

6. Run `terraform apply` on terminal
    - To build or make changes to infrastructure to reach desired state

7. [View resource option 1] Run `docker images` on terminal
    - Observe that there is a docker image in your local computer call hello-world

8. [View resource option 2] Run `terraform show` on terminal
    - To view the resources that are being managed by terraform
    - Inspect the current state as terraform sees it

8. Run `terraform destroy` on terminal
    - To destroy the Terraform managed infrastructure
    - Try running `docker images` or `terraform show` and notice that the "hello-world" container been removed from your local computer

---
## Stretch Challenge
1. Modify the terraform code in main.tf to pull another image from docker registery
    - Pull an image call "httpd"
    - Use docker images or terraform show to check that you have both httpd and hello-world images on your local computer