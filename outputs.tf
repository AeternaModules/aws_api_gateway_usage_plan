output "api_gateway_usage_plans_id" {
  description = "Map of id values across all api_gateway_usage_plans, keyed the same as var.api_gateway_usage_plans"
  value       = { for k, v in aws_api_gateway_usage_plan.api_gateway_usage_plans : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_gateway_usage_plans_api_stages" {
  description = "Map of api_stages values across all api_gateway_usage_plans, keyed the same as var.api_gateway_usage_plans"
  value       = { for k, v in aws_api_gateway_usage_plan.api_gateway_usage_plans : k => v.api_stages if v.api_stages != null && length(v.api_stages) > 0 }
}
output "api_gateway_usage_plans_arn" {
  description = "Map of arn values across all api_gateway_usage_plans, keyed the same as var.api_gateway_usage_plans"
  value       = { for k, v in aws_api_gateway_usage_plan.api_gateway_usage_plans : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "api_gateway_usage_plans_description" {
  description = "Map of description values across all api_gateway_usage_plans, keyed the same as var.api_gateway_usage_plans"
  value       = { for k, v in aws_api_gateway_usage_plan.api_gateway_usage_plans : k => v.description if v.description != null && length(v.description) > 0 }
}
output "api_gateway_usage_plans_name" {
  description = "Map of name values across all api_gateway_usage_plans, keyed the same as var.api_gateway_usage_plans"
  value       = { for k, v in aws_api_gateway_usage_plan.api_gateway_usage_plans : k => v.name if v.name != null && length(v.name) > 0 }
}
output "api_gateway_usage_plans_product_code" {
  description = "Map of product_code values across all api_gateway_usage_plans, keyed the same as var.api_gateway_usage_plans"
  value       = { for k, v in aws_api_gateway_usage_plan.api_gateway_usage_plans : k => v.product_code if v.product_code != null && length(v.product_code) > 0 }
}
output "api_gateway_usage_plans_quota_settings" {
  description = "Map of quota_settings values across all api_gateway_usage_plans, keyed the same as var.api_gateway_usage_plans"
  value       = { for k, v in aws_api_gateway_usage_plan.api_gateway_usage_plans : k => v.quota_settings if v.quota_settings != null && length(v.quota_settings) > 0 }
}
output "api_gateway_usage_plans_region" {
  description = "Map of region values across all api_gateway_usage_plans, keyed the same as var.api_gateway_usage_plans"
  value       = { for k, v in aws_api_gateway_usage_plan.api_gateway_usage_plans : k => v.region if v.region != null && length(v.region) > 0 }
}
output "api_gateway_usage_plans_tags" {
  description = "Map of tags values across all api_gateway_usage_plans, keyed the same as var.api_gateway_usage_plans"
  value       = { for k, v in aws_api_gateway_usage_plan.api_gateway_usage_plans : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "api_gateway_usage_plans_tags_all" {
  description = "Map of tags_all values across all api_gateway_usage_plans, keyed the same as var.api_gateway_usage_plans"
  value       = { for k, v in aws_api_gateway_usage_plan.api_gateway_usage_plans : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "api_gateway_usage_plans_throttle_settings" {
  description = "Map of throttle_settings values across all api_gateway_usage_plans, keyed the same as var.api_gateway_usage_plans"
  value       = { for k, v in aws_api_gateway_usage_plan.api_gateway_usage_plans : k => v.throttle_settings if v.throttle_settings != null && length(v.throttle_settings) > 0 }
}

