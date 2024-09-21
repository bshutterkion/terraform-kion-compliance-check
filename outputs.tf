output "compliance_check_id" {
  description = "The ID of the compliance check"
  value       = local.compliance_check_id
}

output "compliance_standard_name" {
  description = "The name of the compliance standard this check belongs to"
  value       = var.compliance_standard_name
}
