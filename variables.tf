variable "route53_resolver_endpoints" {
  description = <<EOT
Map of route53_resolver_endpoints, attributes below
Required:
    - direction
    - security_group_ids
    - ip_address (block):
        - ip (optional)
        - ipv6 (optional)
        - subnet_id (required)
Optional:
    - name
    - protocols
    - region
    - resolver_endpoint_type
    - rni_enhanced_metrics_enabled
    - tags
    - tags_all
    - target_name_server_metrics_enabled
EOT

  type = map(object({
    direction                          = string
    security_group_ids                 = set(string)
    name                               = optional(string)
    protocols                          = optional(set(string))
    region                             = optional(string)
    resolver_endpoint_type             = optional(string)
    rni_enhanced_metrics_enabled       = optional(bool)
    tags                               = optional(map(string))
    tags_all                           = optional(map(string))
    target_name_server_metrics_enabled = optional(bool)
    ip_address = list(object({
      ip        = optional(string)
      ipv6      = optional(string)
      subnet_id = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.route53_resolver_endpoints : (
        length(v.ip_address) >= 2 && length(v.ip_address) <= 10
      )
    ])
    error_message = "Each ip_address list must contain between 2 and 10 items"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

