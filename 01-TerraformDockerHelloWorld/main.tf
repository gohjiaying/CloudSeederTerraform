# This script with pull a docker image call "hello-world" from the registry to your local computer.

/* 
A provider is responsible for understanding API interactions and exposing resources.
You can find a list of Terraform providers here: https://www.terraform.io/docs/providers/index.html
Common provider includes docker and aws.
*/
provider "docker" {}


/*
This is a resource block. Each resource block describes one or more infrastructure objects.
The resource block format is as such:
    resource "type" "local_name"{body block}

The body block between { and } are the configuration arguments
*/
resource "docker_image" "helloworld-image"{ 
    name = "hello-world"
}