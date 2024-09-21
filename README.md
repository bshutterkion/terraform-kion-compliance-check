<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kion"></a> [kion](#requirement\_kion) | ~> 0.3.18 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kion"></a> [kion](#provider\_kion) | ~> 0.3.18 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kion_compliance_check.custom](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/resources/compliance_check) | resource |
| [kion_compliance_check.system](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/data-sources/compliance_check) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_policy_id"></a> [azure\_policy\_id](#input\_azure\_policy\_id) | The Azure policy ID | `number` | `null` | no |
| <a name="input_body"></a> [body](#input\_body) | The body of the compliance check | `string` | `null` | no |
| <a name="input_body_template"></a> [body\_template](#input\_body\_template) | Path to the Terraform template file | `string` | `null` | no |
| <a name="input_cloud_provider_id"></a> [cloud\_provider\_id](#input\_cloud\_provider\_id) | The ID of the cloud provider | `number` | `1` | no |
| <a name="input_compliance_check_type_id"></a> [compliance\_check\_type\_id](#input\_compliance\_check\_type\_id) | The ID of the compliance check type | `number` | `2` | no |
| <a name="input_compliance_standard_name"></a> [compliance\_standard\_name](#input\_compliance\_standard\_name) | The name of the compliance standard this check belongs to | `string` | n/a | yes |
| <a name="input_created_by_user_id"></a> [created\_by\_user\_id](#input\_created\_by\_user\_id) | The ID of the user who created the check | `number` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the compliance check | `string` | `null` | no |
| <a name="input_frequency_minutes"></a> [frequency\_minutes](#input\_frequency\_minutes) | Frequency of the compliance check | `number` | `60` | no |
| <a name="input_frequency_type_id"></a> [frequency\_type\_id](#input\_frequency\_type\_id) | The frequency type ID | `number` | `2` | no |
| <a name="input_is_all_regions"></a> [is\_all\_regions](#input\_is\_all\_regions) | Whether the compliance check applies to all regions | `bool` | `true` | no |
| <a name="input_is_auto_archived"></a> [is\_auto\_archived](#input\_is\_auto\_archived) | Whether the compliance check is auto-archived | `bool` | `true` | no |
| <a name="input_is_system_check"></a> [is\_system\_check](#input\_is\_system\_check) | Whether this is a system compliance check | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the compliance check | `string` | n/a | yes |
| <a name="input_owner_user_groups"></a> [owner\_user\_groups](#input\_owner\_user\_groups) | List of owner user groups | <pre>list(object({<br>    id = number<br>  }))</pre> | n/a | yes |
| <a name="input_owner_users"></a> [owner\_users](#input\_owner\_users) | List of owner users | <pre>list(object({<br>    id = number<br>  }))</pre> | n/a | yes |
| <a name="input_regions"></a> [regions](#input\_regions) | Regions where the compliance check applies | `list(string)` | <pre>[<br>  "us-east-1"<br>]</pre> | no |
| <a name="input_severity_type_id"></a> [severity\_type\_id](#input\_severity\_type\_id) | The severity type ID | `number` | `3` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_compliance_check_id"></a> [compliance\_check\_id](#output\_compliance\_check\_id) | The ID of the compliance check |
| <a name="output_compliance_standard_name"></a> [compliance\_standard\_name](#output\_compliance\_standard\_name) | The name of the compliance standard this check belongs to |
<!-- END_TF_DOCS -->