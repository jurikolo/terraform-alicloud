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
