resource "aws_backup_vault" "main" {
  name          = var.backup_vault_name
  kms_key_arn   = var.backup_vault_kms_key_arn
  force_destroy = var.backup_vault_force_destroy
}
