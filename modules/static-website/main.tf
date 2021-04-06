terraform {
  required_version = "~> 0.14.0"
}

resource "alicloud_oss_bucket" "oss-bucket" {
  bucket = var.bucket_name
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "alicloud_oss_bucket_object" "index-html" {
  bucket  = alicloud_oss_bucket.oss-bucket.bucket
  key     = "index.html"
  content = var.index_html
  acl     = "public-read"
}

resource "alicloud_oss_bucket_object" "error-html" {
  bucket  = alicloud_oss_bucket.oss-bucket.bucket
  key     = "error.html"
  content = var.error_html
  acl     = "public-read"
}

resource "alicloud_cdn_domain_new" "cdn" {
  domain_name = "jurikolo.cyou"
  cdn_type    = "web"
  scope       = "overseas"
  sources {
    content  = "${alicloud_oss_bucket.oss-bucket.id}.${alicloud_oss_bucket.oss-bucket.extranet_endpoint}"
    type     = "oss"
    port     = local.http_port
  }
  certificate_config {
    server_certificate_status = "off"
  }
}

resource "alicloud_alidns_record" "dns-record-1" {
  domain_name = var.domain_name
  rr          = "@"
  type        = "CNAME"
  value       = alicloud_cdn_domain_new.cdn.cname
  remark      = "DNS record 1"
  status      = "ENABLE"
}

locals {
  http_port  = 80
  https_port = 443
}