# Define the provider required
provider "docker" {}

resource "docker_image" "<FILL_IN_TF_RESOURCE_NAME_HERE>" {    #TODO: Define a terraform resource name 
  name = "httpd"
}

resource "docker_container" "myapache-container" {
    name = "mycontainer"
    image = docker_image.<REPLACE_WITH IMAGE_TF_RESOURCE_NAME>.latest   #TODO: Reference docker image that you have defined above her
    ports {
        internal = 80
        external = 8080
    }
}