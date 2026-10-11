variable "container_azure_node_pools" {
  description = <<EOT
Map of container_azure_node_pools, attributes below
Required:
    - cluster
    - location
    - name
    - subnet_id
    - version
    - autoscaling (block):
        - max_node_count (required)
        - min_node_count (required)
    - config (block):
        - labels (optional)
        - proxy_config (optional, block):
            - resource_group_id (required)
            - secret_id (required)
        - root_volume (optional, block):
            - size_gib (optional)
        - ssh_config (required, block):
            - authorized_key (required)
        - tags (optional)
        - vm_size (optional)
    - max_pods_constraint (block):
        - max_pods_per_node (required)
Optional:
    - annotations
    - azure_availability_zone
    - deletion_policy
    - project
    - management (block):
        - auto_repair (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cluster                 = string
    location                = string
    name                    = string
    subnet_id               = string
    version                 = string
    annotations             = optional(map(string))
    azure_availability_zone = optional(string)
    deletion_policy         = optional(string)
    project                 = optional(string)
    autoscaling = object({
      max_node_count = number
      min_node_count = number
    })
    config = object({
      labels = optional(map(string))
      proxy_config = optional(object({
        resource_group_id = string
        secret_id         = string
      }))
      root_volume = optional(object({
        size_gib = optional(number)
      }))
      ssh_config = object({
        authorized_key = string
      })
      tags    = optional(map(string))
      vm_size = optional(string)
    })
    max_pods_constraint = object({
      max_pods_per_node = number
    })
    management = optional(object({
      auto_repair = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

