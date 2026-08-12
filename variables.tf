variable "api_gateway_usage_plans" {
  description = <<EOT
Map of api_gateway_usage_plans, attributes below
Required:
    - name
Optional:
    - description
    - product_code
    - region
    - tags
    - tags_all
    - api_stages (block):
        - api_id (required)
        - stage (required)
        - throttle (optional, block):
            - burst_limit (optional)
            - path (required)
            - rate_limit (optional)
    - quota_settings (block):
        - limit (required)
        - offset (optional)
        - period (required)
    - throttle_settings (block):
        - burst_limit (optional)
        - rate_limit (optional)
EOT

  type = map(object({
    name         = string
    description  = optional(string)
    product_code = optional(string)
    region       = optional(string)
    tags         = optional(map(string))
    tags_all     = optional(map(string))
    api_stages = optional(list(object({
      api_id = string
      stage  = string
      throttle = optional(list(object({
        burst_limit = optional(number)
        path        = string
        rate_limit  = optional(number)
      })))
    })))
    quota_settings = optional(object({
      limit  = number
      offset = optional(number)
      period = string
    }))
    throttle_settings = optional(object({
      burst_limit = optional(number)
      rate_limit  = optional(number)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

