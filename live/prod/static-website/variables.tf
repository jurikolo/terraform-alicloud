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
  default     = "<html><head><title>Sample static website</title></head><body><h1>Sample static website</h1></body></html>"
}

variable "error_html" {
  description = "error.html contents"
  type        = string
  default     = "<html><head><title>Oops</title></head><body><h1>Oops, something went wrong</h1></body></html>"
}
