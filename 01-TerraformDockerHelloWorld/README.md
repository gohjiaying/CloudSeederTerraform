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

2. Read and understand the code. 
    - Check if you are able to to answer the following questions.
        - What is a terraform provider?
        - What is a terraform resource block?

3. Run `terraform init` on terminal. This command:
    - initalizes a working directory containing terraform configuration.
    - is usually run once *(Works similar to git init)*.
    - creates an aditional hidden folder named ".terraform" to organize
    packages that are required. In this case docker provider has been retrieved.

4. Run `terraform validate` on terminal. This command:
    - checks the syntax of configuration code.

5. Run `terraform plan` on terminal. This command:
    - generates and show an execution plan.
    - checks if potential changes match with expectations.
 
6. Run `terraform apply` on terminal. This command:
    - builds or make changes to infrastructure to reach the desired state as defined in the configuration files.

7. Run `docker images` on terminal *(View resource option 1)*. This command:
    - list your docker image in your local computer. (Observe that you have hello-world docker image).

8. Run `terraform show` on terminal. *(View resource option 2)*. This command:
    - allows viewing of resources that are managed by Terraform.
    - inspect the current state as terraform sees it.

8. Run `terraform destroy` on terminal. This command:
    - removes infrastructure managed by Terraform.
 
9. Run `docker images` or `terraform show`. 
    - Notice that the "hello-world" container been removed from your local computer.


## Stretch Challenge
1. Modify the terraform code in main.tf to pull another image from docker registery
    - Pull an image call "httpd".
    - Use docker images or terraform show to check that you have both httpd and hello-world images on your local computer.