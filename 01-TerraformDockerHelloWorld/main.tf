# This script with pull a docker image call "hello-world" from the registry to your local computer.

/* 
A provider is responsible for understanding API interactions and exposing resources.
You can find a list of Terraform providers here: https://www.terraform.io/docs/providers/index.html
Common provider includes docker and aws.

This is indicating to use docker provider.
*/
provider "<ADD_PROVIDER_HERE>" {}  #TODO: Indicate "docker" provider here


/*
This is a resource block. Each resource block describes one or more infrastructure objects.
This block is equivalent to docker pull hello-world but now it is managed by Terraform.

The resource block format is as such:
    resource "type" "local_name"{body block}

The body block between { and } are the configuration arguments
*/
resource "<ADD_RESOUCE_TYPE_HERE>"  "helloworld-image"{     #TODO: Define a resource type of "docker_image"
    name = "<ADD_IMAGE_NAME HERE>"                          #TODO: Provide the image name "hello-world" to pull from docker registry
}