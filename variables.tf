variable "storage_buckets_lookup" {
  description = <<EOT
Map of storage_buckets_lookup, attributes below
Optional:
    - prefix
    - project
EOT

  type = map(object({
    prefix  = optional(string)
    project = optional(string)
  }))
}

