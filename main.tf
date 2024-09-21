resource "kion_compliance_check" "custom" {
  count                    = var.is_system_check ? 0 : 1
  name                     = var.name
  cloud_provider_id        = var.cloud_provider_id
  compliance_check_type_id = var.compliance_check_type_id

  dynamic "owner_users" {
    for_each = var.owner_users
    content {
      id = owner_users.value.id
    }
  }

  dynamic "owner_user_groups" {
    for_each = var.owner_user_groups
    content {
      id = owner_user_groups.value.id
    }
  }

  azure_policy_id    = var.azure_policy_id
  body               = var.body_template != null ? templatefile(var.body_template, {}) : var.body
  created_by_user_id = var.created_by_user_id != null ? var.created_by_user_id : var.owner_users[0].id
  description        = var.description
  frequency_minutes  = var.frequency_minutes
  frequency_type_id  = var.frequency_type_id
  is_all_regions     = var.is_all_regions
  is_auto_archived   = var.is_auto_archived
  regions            = var.regions
  severity_type_id   = var.severity_type_id
}

locals {
  compliance_check_id = var.is_system_check ? (
    length(data.kion_compliance_check.system) > 0 && length(data.kion_compliance_check.system[0].list) > 0 ?
    data.kion_compliance_check.system[0].list[0].id :
    null
    ) : (
    length(kion_compliance_check.custom) > 0 ?
    kion_compliance_check.custom[0].id :
    null
  )
}
