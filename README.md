<!-- BEGIN_TF_DOCS -->
<!-- markdownlint-disable MD033 -->
# Key pairs Module

- Creating Key pair file. A key pair is used to control login access to EC2 instances.
- Generates a local file with the given content.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.61.0 |
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_key_pair.generated_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [local_file.key_file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [tls_private_key.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_key"></a> [create\_key](#input\_create\_key) | Determines whether resources will be created, if true | `bool` | `false` | no |
| <a name="input_create_key_file"></a> [create\_key\_file](#input\_create\_key\_file) | Determines whether resources will be created, if true | `bool` | `false` | no |
| <a name="input_file_permission"></a> [file\_permission](#input\_file\_permission) | Permissions to set for the output file, expressed as string in numeric notation. Default value is 0777 | `string` | `"0777"` | no |
| <a name="input_key_file_name"></a> [key\_file\_name](#input\_key\_file\_name) | (Required) The path to the file that will be created. Missing parent directories will be created. If the file already exists, it will be overridden with the given content. | `string` | `null` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The name for the key pair. Conflicts with `key_name_prefix` | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_key_pair_name"></a> [aws\_key\_pair\_name](#output\_aws\_key\_pair\_name) | n/a |
<!-- END_TF_DOCS -->