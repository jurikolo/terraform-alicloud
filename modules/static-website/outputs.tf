output "oss_bucket_external_endpoint" {
  value       = alicloud_oss_bucket.oss-bucket.extranet_endpoint
  description = "External endpoint"
}

output "oss_bucket_internal_endpoint" {
  value       = alicloud_oss_bucket.oss-bucket.intranet_endpoint
  description = "Internal endpoint"
}

output "oss_bucket_id" {
  value       = alicloud_oss_bucket.oss-bucket.id
  description = "Bucket ID"
}

output "cdn_id" {
  value       = alicloud_cdn_domain_new.cdn.id
  description = "CDN ID"
}

output "cdn_cname" {
  value       = alicloud_cdn_domain_new.cdn.cname
  description = "CDN CNAME"
}

