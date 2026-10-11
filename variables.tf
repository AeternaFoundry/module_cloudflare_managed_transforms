variable "managed_transforms" {
  description = <<EOT
Map of managed_transforms, attributes below
Required:
    - zone_id
Optional:
    - managed_request_headers
    - managed_response_headers
EOT

  type = map(object({
    zone_id = string
    managed_request_headers = optional(set(object({
      enabled = bool
      id      = string
    })))
    managed_response_headers = optional(set(object({
      enabled = bool
      id      = string
    })))
  }))
}

