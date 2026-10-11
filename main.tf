resource "google_container_azure_node_pool" "container_azure_node_pools" {
  for_each = var.container_azure_node_pools

  cluster                 = each.value.cluster
  location                = each.value.location
  name                    = each.value.name
  subnet_id               = each.value.subnet_id
  version                 = each.value.version
  annotations             = each.value.annotations
  azure_availability_zone = each.value.azure_availability_zone
  deletion_policy         = each.value.deletion_policy
  project                 = each.value.project

  autoscaling {
    max_node_count = each.value.autoscaling.max_node_count
    min_node_count = each.value.autoscaling.min_node_count
  }

  config {
    labels = each.value.config.labels
    dynamic "proxy_config" {
      for_each = each.value.config.proxy_config != null ? [each.value.config.proxy_config] : []
      content {
        resource_group_id = proxy_config.value.resource_group_id
        secret_id         = proxy_config.value.secret_id
      }
    }
    dynamic "root_volume" {
      for_each = each.value.config.root_volume != null ? [each.value.config.root_volume] : []
      content {
        size_gib = root_volume.value.size_gib
      }
    }
    ssh_config {
      authorized_key = each.value.config.ssh_config.authorized_key
    }
    tags    = each.value.config.tags
    vm_size = each.value.config.vm_size
  }

  max_pods_constraint {
    max_pods_per_node = each.value.max_pods_constraint.max_pods_per_node
  }

  dynamic "management" {
    for_each = each.value.management != null ? [each.value.management] : []
    content {
      auto_repair = management.value.auto_repair
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

