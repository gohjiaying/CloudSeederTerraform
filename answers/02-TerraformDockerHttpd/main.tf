provider "docker"{}

resource "docker_image" "my-image" {
  name = "gmadhavi/nodeapp:terraform"
}

resource "docker_container" "my-container" {
    name = "cloudseeders-container"
    image = docker_image.my-image.latest
    ports {
        internal = 3000
        external = 8080
    }
}

