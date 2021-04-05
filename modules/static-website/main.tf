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