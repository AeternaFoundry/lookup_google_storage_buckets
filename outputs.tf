output "storage_buckets_lookup_id" {
  description = "Map of id values across all storage_buckets_lookup, keyed the same as var.storage_buckets_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_storage_buckets.storage_buckets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_buckets_lookup_buckets" {
  description = "Map of buckets values across all storage_buckets_lookup, keyed the same as var.storage_buckets_lookup except keys with no buckets are omitted"
  value       = { for k, v in data.google_storage_buckets.storage_buckets_lookup : k => v.buckets if v.buckets != null && length(v.buckets) > 0 }
}
output "storage_buckets_lookup_prefix" {
  description = "Map of prefix values across all storage_buckets_lookup, keyed the same as var.storage_buckets_lookup except keys with no prefix are omitted"
  value       = { for k, v in data.google_storage_buckets.storage_buckets_lookup : k => v.prefix if v.prefix != null && length(v.prefix) > 0 }
}
output "storage_buckets_lookup_project" {
  description = "Map of project values across all storage_buckets_lookup, keyed the same as var.storage_buckets_lookup except keys with no project are omitted"
  value       = { for k, v in data.google_storage_buckets.storage_buckets_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}

