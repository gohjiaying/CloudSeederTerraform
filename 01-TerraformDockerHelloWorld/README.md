# Terraform Docker HelloWorld
This lab will show you how to:
1. Read and understand simple terraform configuration code
2. Use terraform commands to apply the code


## Workshop Reference 
![alt text](https://github.com/gohjiaying/CloudSeedersTerraform/blob/master/images/demo1explanation.png "Workshop 1 Architecture Reference")


## Prequsites
Install terraform by using [terraform getting started guide](https://learn.hashicorp.com/terraform/getting-started/install.html)


## Steps
1. Open main.tf

2. Read and understand the code. You will be able to answer the following questions
    - What is a terraform provider?
    - What is a terraform resource block?

3. Run `terraform init` on terminal
    - Terraform init command initalizes a working directory containing terraform configuration.
    - This is usually run once. It works like git init.
    - Notice this terraform command creates an aditional hidden folder ".terraform" to organize
    packages that are required. In this case docker provider has been retrieved.

4. Run `terraform validate` on terminal.
    - Terraform validate command checks syntax of code.
    - It is used for for validaing configurations files.

5. Run `terraform plan` on terminal.
    - Terraform plan generates and show an execution plan.
    - It is to check if potential changes matches expectations.
 
6. Run `terraform apply` on terminal.
    - Terraform apply is used for building or making changes to infrastructure to reach the desired state as defined in the configuration files.

7. Run `docker images` on terminal. *(View resource option 1)*
    - Observe that there is a docker image in your local computer call hello-world.

8. Run `terraform show` on terminal. *(View resource option 2)*
    - Terraform Show allows viewing of resources that are managed by Terraform.
    - It inspect the current state as terraform sees it.

8. Run `terraform destroy` on terminal
    - Terraform destroy removes infrastructure managed by Terraform.
    - Try to run `docker images` or `terraform show` and notice that the "hello-world" container been removed from your local computer.


## Stretch Challenge
1. Modify the terraform code in main.tf to pull another image from docker registery
    - Pull an image call "httpd".
    - Use docker images or terraform show to check that you have both httpd and hello-world images on your local computer.