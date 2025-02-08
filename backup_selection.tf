resource "aws_backup_selection" "main" {
  iam_role_arn = aws_iam_role.aws_backup.arn
  name         = var.backup_selection_name
  plan_id      = aws_backup_plan.main.id
  resources    = ["*"]

  condition {
    string_equals {
      key   = "aws:ResourceTag/Backup"
      value = "True"
    }
  }
}