variable "backup_vault_name" {
  type        = string
  description = "Name of the backup vault to create."
}

variable "backup_vault_kms_key_arn" {
  description = "The server-side encryption key that is used to protect your backups."
  type        = string
  default     = null
}

variable "backup_vault_force_destroy" {
  description = "A boolean that indicates that all recovery points stored in the vault are deleted so that the vault can be destroyed without error."
  type        = bool
  default     = false
}

variable "backup_plan_name" {
  type        = string
  description = "The display name of a backup plan."
}

variable "rule_name" {
  description = "A display name for a backup rule"
  type        = string
  default     = "teste-engie"
}

variable "iam_role_name" {
  description = "Allow to set IAM role name, otherwise use predefined default"
  type        = string
  default     = "aws_backup_role"
}

variable "backup_selection_name" {
  description = "The display name of a resource selection document"
  type        = string
  default     = null
}
