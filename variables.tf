variable "schemas_lookup" {
  description = <<EOT
Map of schemas_lookup, attributes below
Optional:
    - like
    - starts_with
    - with_describe
    - with_parameters
    - in (block):
        - account (optional)
        - application (optional)
        - application_package (optional)
        - database (optional)
    - limit (block):
        - from (optional)
        - rows (required)
EOT

  type = map(object({
    like            = optional(string)
    starts_with     = optional(string)
    with_describe   = optional(bool)
    with_parameters = optional(bool)
    in = optional(object({
      account             = optional(bool)
      application         = optional(string)
      application_package = optional(string)
      database            = optional(string)
    }))
    limit = optional(object({
      from = optional(string)
      rows = number
    }))
  }))
}

