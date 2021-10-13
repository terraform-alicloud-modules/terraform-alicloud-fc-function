Terraform module which creates Function Compute Service for application on Alibaba Cloud

terraform-alicloud-fc-function
=====================================================================

English | [简体中文](README-CN.md)

This module is used to create Function Compute Service for application under Alibaba Cloud.

These types of resources are supported:

* [alicloud_log_project](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/log_project)
* [alicloud_log_store](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/log_store)
* [alicloud_fc_service](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/fc_service)
* [alicloud_oss_bucket](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/oss_bucket)
* [alicloud_oss_bucket_object](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/oss_bucket_object)
* [alicloud_ram_role](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ram_role)
* [alicloud_ram_role_policy_attachment](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ram_role_policy_attachment)
* [alicloud_fc_function](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/fc_function)

## Usage

```hcl
module "fc-function" {
  region            = "cn-shenzhen"
  source            = "terraform-alicloud-modules/fc-function/alicloud"
  name              = "tf-fc-function"
  runtime           = "php7.2"
  handler           = "hello.handler"
  memory_size       = "512"
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
