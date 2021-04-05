terraform {
  required_version = "~> 0.14.0"
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.120.0"
    }
  }
  backend "s3" {
    bucket = "jurikolo-alicloud"
    key = "dev/webserver/terraform.tfstate"
    region = "eu-central-1"
    encrypt = true
    profile = "terraform"
  }
}

provider "alicloud" { }

module "static-website" {
  source = "../../../modules/static-website"

  bucket_name = var.bucket_name
  index_html = var.index_html
  error_html = var.error_html
}