output "container_azure_node_pools_id" {
  description = "Map of id values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no id are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "container_azure_node_pools_annotations" {
  description = "Map of annotations values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no annotations are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "container_azure_node_pools_autoscaling" {
  description = "Map of autoscaling values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no autoscaling are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => one(v.autoscaling) if v.autoscaling != null && length(v.autoscaling) > 0 }
}
output "container_azure_node_pools_azure_availability_zone" {
  description = "Map of azure_availability_zone values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no azure_availability_zone are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.azure_availability_zone if v.azure_availability_zone != null && length(v.azure_availability_zone) > 0 }
}
output "container_azure_node_pools_cluster" {
  description = "Map of cluster values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no cluster are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.cluster if v.cluster != null && length(v.cluster) > 0 }
}
output "container_azure_node_pools_config" {
  description = "Map of config values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no config are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => one(v.config) if v.config != null && length(v.config) > 0 }
}
output "container_azure_node_pools_create_time" {
  description = "Map of create_time values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no create_time are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "container_azure_node_pools_deletion_policy" {
  description = "Map of deletion_policy values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no deletion_policy are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "container_azure_node_pools_effective_annotations" {
  description = "Map of effective_annotations values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no effective_annotations are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "container_azure_node_pools_etag" {
  description = "Map of etag values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no etag are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "container_azure_node_pools_location" {
  description = "Map of location values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no location are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.location if v.location != null && length(v.location) > 0 }
}
output "container_azure_node_pools_management" {
  description = "Map of management values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no management are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => one(v.management) if v.management != null && length(v.management) > 0 }
}
output "container_azure_node_pools_max_pods_constraint" {
  description = "Map of max_pods_constraint values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no max_pods_constraint are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => one(v.max_pods_constraint) if v.max_pods_constraint != null && length(v.max_pods_constraint) > 0 }
}
output "container_azure_node_pools_name" {
  description = "Map of name values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no name are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "container_azure_node_pools_project" {
  description = "Map of project values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no project are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.project if v.project != null && length(v.project) > 0 }
}
output "container_azure_node_pools_reconciling" {
  description = "Map of reconciling values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no reconciling are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.reconciling if v.reconciling != null }
}
output "container_azure_node_pools_state" {
  description = "Map of state values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no state are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.state if v.state != null && length(v.state) > 0 }
}
output "container_azure_node_pools_subnet_id" {
  description = "Map of subnet_id values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no subnet_id are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "container_azure_node_pools_uid" {
  description = "Map of uid values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no uid are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "container_azure_node_pools_update_time" {
  description = "Map of update_time values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no update_time are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "container_azure_node_pools_version" {
  description = "Map of version values across all container_azure_node_pools, keyed the same as var.container_azure_node_pools except keys with no version are omitted"
  value       = { for k, v in google_container_azure_node_pool.container_azure_node_pools : k => v.version if v.version != null && length(v.version) > 0 }
}

