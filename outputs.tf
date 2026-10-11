output "route53_resolver_endpoints_id" {
  description = "Map of id values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_resolver_endpoints_arn" {
  description = "Map of arn values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "route53_resolver_endpoints_direction" {
  description = "Map of direction values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.direction if v.direction != null && length(v.direction) > 0 }
}
output "route53_resolver_endpoints_host_vpc_id" {
  description = "Map of host_vpc_id values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.host_vpc_id if v.host_vpc_id != null && length(v.host_vpc_id) > 0 }
}
output "route53_resolver_endpoints_ip_address" {
  description = "Map of ip_address values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "route53_resolver_endpoints_name" {
  description = "Map of name values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.name if v.name != null && length(v.name) > 0 }
}
output "route53_resolver_endpoints_protocols" {
  description = "Map of protocols values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.protocols if v.protocols != null && length(v.protocols) > 0 }
}
output "route53_resolver_endpoints_region" {
  description = "Map of region values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "route53_resolver_endpoints_resolver_endpoint_type" {
  description = "Map of resolver_endpoint_type values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.resolver_endpoint_type if v.resolver_endpoint_type != null && length(v.resolver_endpoint_type) > 0 }
}
output "route53_resolver_endpoints_rni_enhanced_metrics_enabled" {
  description = "Map of rni_enhanced_metrics_enabled values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.rni_enhanced_metrics_enabled if v.rni_enhanced_metrics_enabled != null }
}
output "route53_resolver_endpoints_security_group_ids" {
  description = "Map of security_group_ids values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.security_group_ids if v.security_group_ids != null && length(v.security_group_ids) > 0 }
}
output "route53_resolver_endpoints_tags" {
  description = "Map of tags values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "route53_resolver_endpoints_tags_all" {
  description = "Map of tags_all values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "route53_resolver_endpoints_target_name_server_metrics_enabled" {
  description = "Map of target_name_server_metrics_enabled values across all route53_resolver_endpoints, keyed the same as var.route53_resolver_endpoints"
  value       = { for k, v in aws_route53_resolver_endpoint.route53_resolver_endpoints : k => v.target_name_server_metrics_enabled if v.target_name_server_metrics_enabled != null }
}

