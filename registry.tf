resource "yandex_container_registry" "registry" {
  name = var.registry_name
}

resource "yandex_container_repository" "repository" {
  name = "${yandex_container_registry.registry.id}/${var.repository_name}"
}
