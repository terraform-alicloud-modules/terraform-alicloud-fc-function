Terraform module which creates Function Compute Service for application on Alibaba Cloud

terraform-alicloud-fc-function
=====================================================================

[English](README.md) | 简体中文

本 Module 用于在阿里云的 FC 为应用创建后端服务。

本 Module 支持创建以下资源:

* [alicloud_log_project](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/log_project)
* [alicloud_log_store](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/log_store)
* [alicloud_fc_service](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/fc_service)
* [alicloud_oss_bucket](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/oss_bucket)
* [alicloud_oss_bucket_object](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/oss_bucket_object)
* [alicloud_ram_role](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ram_role)
* [alicloud_ram_role_policy_attachment](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ram_role_policy_attachment)
* [alicloud_fc_function](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/fc_function)

## 用法

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

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置.

## 提交问题

如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

## 作者

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## 许可

MIT Licensed. See LICENSE for full details.

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
