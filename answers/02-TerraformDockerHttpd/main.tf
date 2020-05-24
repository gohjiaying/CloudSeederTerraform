provider "docker"{}

resource "docker_image" "myapache-image" {
  name = "httpd"
}

resource "docker_container" "myapache-container" {
    name = "mycontainer"
    image = docker_image.myapache-image.latest
    ports {
        internal = 80
        external = 8080
    }
}

