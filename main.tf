data "google_storage_buckets" "storage_buckets_lookup" {
  for_each = var.storage_buckets_lookup

  prefix  = each.value.prefix
  project = each.value.project
}

