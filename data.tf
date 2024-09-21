data "kion_compliance_check" "system" {
  count = var.is_system_check ? 1 : 0
  filter {
    name   = "name"
    values = [var.name]
  }
}
