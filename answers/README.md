# Terraform Docker HelloWorld
This lab will show you how to:
1. initialize terraform environment and 
2. perform basic terraform commands for infrastructure changes

# Prequsites
Install terraform by using [terraform getting started guide](https://learn.hashicorp.com/terraform/getting-started/install.html)

# Steps
1. Create a file call main.tf
2. Insert code and save the file
```
resource "docker_image" "image_id"{
    name = "hello-world"
}
```
3. run `terraform init`
4. run `terraform validate`
4. run `terraform plan`
5. run `terraform apply`
6. run `terraform destroy`