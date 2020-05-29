# Terraform Docker HTTPD
This lab will show you how to:
1. Reference variable of other resources
2. Define container resource
3. Run a web server on localhost 8080


## Workshop Reference 
![alt text](https://github.com/gohjiaying/CloudSeedersTerraform/blob/master/images/demo2explanation.png "Workshop 2 Architecture Reference")


## Prequsites
- To know some basic docker concepts
- Install Docker by using by using [docker install guide](https://docs.docker.com/get-docker/)
- Install Terraform by using [terraform getting started guide](https://learn.hashicorp.com/terraform/getting-started/install.html)
- (Optional) Complete 01-TerraformDockerHelloWorld. 


## Steps
1. Open main.tf in a editor.


2. On line 4, define terraform resource name.
    - You can name it anything you liked.

3. On line 10, reference the docker image defined in 2 by replacing with the name you have provided


4. Run `terraform init` on terminal.


5. Run `terraform validate` on terminal.


6. Run `terraform plan` on terminal. 
 

7. Run `terraform apply` on terminal. Type `yes` to apply


9. Run `terraform show` on terminal. 
    - Notice 2 resources are created. 1 docker image and 1 docker container
    - In the image resource, find the latest image id. 
    - In the container resource, find the image id and notice that it is the same as the lastest image id as it is referencing.


10. Run `docker ps` on terminal.
    - Notice that your container is running on port 8080


11. Go to your browser and type `localhost:8080` into the URL.
    - It should show a cloudseeders web app!


12. Run `terraform destroy` on terminal to clean up. Type `yes` to confirm.
    
