resource "aws_backup_plan" "main" {
  name = var.backup_plan_name

  rule {
    rule_name         = var.rule_name
    target_vault_name = aws_backup_vault.main.name
    schedule          = "cron(0 * * * ? *)"

    lifecycle {
      delete_after = 3
    }
  }

  advanced_backup_setting {
    backup_options = {
      WindowsVSS = "enabled"
    }
    resource_type = "EC2"
  }

  depends_on = [aws_backup_vault.main]
}
