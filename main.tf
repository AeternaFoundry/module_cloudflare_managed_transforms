resource "cloudflare_managed_transforms" "managed_transforms" {
  for_each = var.managed_transforms

  zone_id                  = each.value.zone_id
  managed_request_headers  = each.value.managed_request_headers
  managed_response_headers = each.value.managed_response_headers
}

