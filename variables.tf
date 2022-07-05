variable "project_name" {
  type        = string
  #default     = "1851-dev-akash1"
  description = "description"
}

variable "region" {
  type        = string
  #default     = "us-east-2"
  description = "description"
}

variable "origin_url" {
  type    = string
  #default = "https://api.1851franchise.com"
}

variable "query_param" {
  type = list(string)
  # default = [
  #   "limit",
  #   "offset",
  #   "isBrand",
  #   "slug",
  #   "site",
  #   "published_duration",
  #   "sort_by",
  #   "brand_id",
  #   "q",
  #   "published_from_date",
  #   "published_to_date",
  #   "by_author",
  #   "by_title",
  #   "by_desc",
  #   "by_keywords",
  #   "sort",
  #   "secret",
  #   "response",
  #   "exclude_brand_id"
  # ]
}

variable "stage_name" {
  #type    = string
  default = "v1"
}

variable "cache_ttl" { // cache ttl in seconds
  type        = number
  #default     = 300
  description = "description"
}

variable "cache_size" { // cache size in GB
  type        = number
  #default     = 0.5
  description = "description"
  validation {
    condition     = can(regex("^(0.5|1.6|6.1|13.5|28.4|58.2|118|237)$", var.cache_size))
    error_message = "Variable 'cache_size' Must be any of the following value 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118 and 237 !"
  }
}