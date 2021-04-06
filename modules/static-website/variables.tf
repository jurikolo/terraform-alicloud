variable "domain_name" {
  description = "Domain name"
  type        = string
}

variable "bucket_name" {
  description = "OSS bucket name"
  type        = string
}

variable "index_html" {
  description = "index.html contents"
  type        = string
}

variable "error_html" {
  description = "error.html contents"
  type        = string
}
