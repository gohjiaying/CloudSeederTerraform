# This script with pull a docker image call "hello-world" from the registry to your local computer.

/* 
A provider is responsible for understanding API interactions and exposing resources.
You can find a list of Terraform providers here: https://www.terraform.io/docs/providers/index.html
Common provider includes docker and aws.

This is indicating to use docker provider.
*/
provider "docker" {}


/*
This is a resource block. Each resource block describes one or more infrastructure objects.
This block is equivalent to docker pull hello-world but now it is managed by Terraform.

The resource block format is as such:
    resource "type" "local_name"{body block}

The body block between { and } are the configuration arguments
*/
resource "docker_image" "helloworld-image"{ 
    name = "hello-world"
}

/*
This is the answer for the stretch challenge.
Steps:
    1. Copy resource block from above.
    2. Change terraform local name as it has to be unique for each resource.
    3. Change image name to pull httpd.
*/

resource "docker_image" "httpd-image"{ 
    name = "httpd"
}