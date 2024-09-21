variable "name" {
  description = "The name of the compliance check"
  type        = string
}

variable "cloud_provider_id" {
  description = "The ID of the cloud provider"
  type        = number
  default     = 1
}

variable "compliance_check_type_id" {
  description = "The ID of the compliance check type"
  type        = number
  default     = 2
}

variable "owner_users" {
  description = "List of owner users"
  type = list(object({
    id = number
  }))
}

variable "owner_user_groups" {
  description = "List of owner user groups"
  type = list(object({
    id = number
  }))
}

variable "azure_policy_id" {
  description = "The Azure policy ID"
  type        = number
  default     = null
}

variable "body" {
  description = "The body of the compliance check"
  type        = string
  default     = null
}

variable "body_template" {
  description = "Path to the Terraform template file"
  type        = string
  default     = null
}

variable "created_by_user_id" {
  description = "The ID of the user who created the check"
  type        = number
  default     = null
}

variable "description" {
  description = "The description of the compliance check"
  type        = string
  default     = null
}

variable "frequency_minutes" {
  description = "Frequency of the compliance check"
  type        = number
  default     = 60
}

variable "frequency_type_id" {
  description = "The frequency type ID"
  type        = number
  default     = 2
}

variable "is_all_regions" {
  description = "Whether the compliance check applies to all regions"
  type        = bool
  default     = true
}

variable "is_auto_archived" {
  description = "Whether the compliance check is auto-archived"
  type        = bool
  default     = true
}

variable "regions" {
  description = "Regions where the compliance check applies"
  type        = list(string)
  default     = ["us-east-1"]
}

variable "severity_type_id" {
  description = "The severity type ID"
  type        = number
  default     = 3
}

variable "is_system_check" {
  description = "Whether this is a system compliance check"
  type        = bool
  default     = false
}

variable "compliance_standard_name" {
  description = "The name of the compliance standard this check belongs to"
  type        = string
}
