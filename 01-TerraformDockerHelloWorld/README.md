# Terraform Docker HelloWorld
This lab will show you how to:
1. Read and understand simple terraform configuration code
2. Use terraform commands to apply the code


## Workshop Reference 
![alt text](https://github.com/gohjiaying/CloudSeedersTerraform/blob/master/images/demo1explanation.png "Workshop 1 Architecture Reference")


## Prequsites
- To know some basic docker concepts
- Install Docker by using by using [docker install guide](https://docs.docker.com/get-docker/)
- Install Terraform by using [terraform getting started guide](https://learn.hashicorp.com/terraform/getting-started/install.html)


## Steps
1. Open main.tf in an editor.


2. On line 10, define provider as `docker`

3. On line 22, define resource type as `docker_image` 

4. On line 23, define image name as `hello-world`. 
    - The `name` argument in the `docker-image` block will determine which image to pull from the registry

5. Run `terraform init` on terminal. This command:
    - initalizes a working directory containing terraform configuration.
    - is usually run once *(Works similar to git init)*.
    - creates an aditional hidden folder named ".terraform" to organize
    packages that are required. In this case docker provider has been retrieved.


6. Run `terraform validate` on terminal. This command:
    - checks the syntax of configuration code.


7. Run `terraform plan` on terminal. This command:
    - generates and show an execution plan.
    - checks if potential changes match with expectations.
 

8. Run `terraform apply` on terminal. Type `yes` to apply. This command:
    - builds or make changes to infrastructure to reach the desired state as defined in the configuration files.


9. Run `docker images` on terminal *(View resource option 1)*. This command:
    - list your docker image in your local computer. (Observe that you have hello-world docker image).


10. Run `terraform show` on terminal. *(View resource option 2)*. This command:
    - allows viewing of resources that are managed by Terraform.
    - inspects the current state as terraform sees it.


11. Run `terraform destroy` on terminal. Type `yes` to confirm. This command:
    - removes infrastructure managed by Terraform.

 
12. Run `docker images` or `terraform show`. 
    - Notice that the "hello-world" container been removed from your local computer.


## Stretch Challenge
1. Modify the terraform code in main.tf to pull another image from docker registery
    - Pull an image call "httpd".
    - Use docker images or terraform show to check that you have both httpd and hello-world images on your local computer.