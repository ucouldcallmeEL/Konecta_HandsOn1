resource "aws_iam_user_group_membership" "tfer--grabaciones_nice-002E-prog-002F-ManagedMFA" {
  groups = ["ManagedMFA"]
  user   = "grabaciones_nice.prog"
}
