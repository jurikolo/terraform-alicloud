# terraform-alicloud
Terraform sample modules for Alibaba cloud

## Usage
First step is to initialize terraform using:
```bash
terraform init
```
or if you have local directory for plugins, use something like this:
```bash
terraform init -plugin-dir=/opt/terraform/.terraform/providers
```

## Other
### Regions and zones
To get a list of regions, execute:
```bash
aliyun ecs DescribeRegions | jq '.Regions.Region[].RegionId'
```

To get a list of zones within a region, execute (replace eu-central-1 with desired region):
```bash
aliyun ecs DescribeZones --RegionId eu-central-1 | jq '.Zones.Zone[].ZoneId'
```