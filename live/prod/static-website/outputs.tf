output "oss_bucket_external_endpoint" {
  value       = module.static-website.oss_bucket_external_endpoint
  description = "External endpoint"
}

output "oss_bucket_internal_endpoint" {
  value       = module.static-website.oss_bucket_internal_endpoint
  description = "Internal endpoint"
}

output "oss_bucket_id" {
  value       = module.static-website.oss_bucket_id
  description = "Bucket ID"
}

output "cdn_id" {
  value       = module.static-website.cdn_id
  description = "CDN ID"
}

output "cdn_cname" {
  value       = module.static-website.cdn_cname
  description = "CDN CNAME"
}