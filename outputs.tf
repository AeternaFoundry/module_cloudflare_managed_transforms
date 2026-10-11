output "managed_transforms_id" {
  description = "Map of id values across all managed_transforms, keyed the same as var.managed_transforms except keys with no id are omitted"
  value       = { for k, v in cloudflare_managed_transforms.managed_transforms : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_transforms_managed_request_headers" {
  description = "Map of managed_request_headers values across all managed_transforms, keyed the same as var.managed_transforms except keys with no managed_request_headers are omitted"
  value       = { for k, v in cloudflare_managed_transforms.managed_transforms : k => v.managed_request_headers if v.managed_request_headers != null && length(v.managed_request_headers) > 0 }
}
output "managed_transforms_managed_response_headers" {
  description = "Map of managed_response_headers values across all managed_transforms, keyed the same as var.managed_transforms except keys with no managed_response_headers are omitted"
  value       = { for k, v in cloudflare_managed_transforms.managed_transforms : k => v.managed_response_headers if v.managed_response_headers != null && length(v.managed_response_headers) > 0 }
}
output "managed_transforms_zone_id" {
  description = "Map of zone_id values across all managed_transforms, keyed the same as var.managed_transforms except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_managed_transforms.managed_transforms : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

