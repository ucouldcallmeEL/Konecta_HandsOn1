resource "aws_iam_role_policy_attachment" "tfer--AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-eu-west-1-20ppj_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-eu-west-1-20ppj"
}

resource "aws_iam_role_policy_attachment" "tfer--AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-us-east-1-20ppj_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-us-east-1-20ppj"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSControlTowerExecution_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "AWSControlTowerExecution"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_Administrador_711960b6a71d88c3_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "AWSReservedSSO_Administrador_711960b6a71d88c3"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_AdministratorAccess_a9007a8e5d9de17e_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "AWSReservedSSO_AdministratorAccess_a9007a8e5d9de17e"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_AdministratorAccess_a9007a8e5d9de17e_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "AWSReservedSSO_AdministratorAccess_a9007a8e5d9de17e"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AWSCloudFormationFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCloudFormationFullAccess"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AWSElasticBeanstalkRoleCore" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkRoleCore"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AWSLambda_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSLambda_FullAccess"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AWSStepFunctionsConsoleFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSStepFunctionsConsoleFullAccess"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AWSSupportAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSSupportAccess"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AdministratorAccess-AWSElasticBeanstalk" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-AWSElasticBeanstalk"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AdministratorAccess-Amplify" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-Amplify"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AmazonAPIGatewayAdministrator" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonAPIGatewayAdministrator"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AmazonDynamoDBFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AmazonEC2ContainerRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AmazonECS_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AmazonElasticFileSystemFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonElasticFileSystemFullAccess"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AmazonSESFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSESFullAccess"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AmazonSSMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_CloudWatchFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  role       = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_ReadOnlyAccess_b919b7269094a688_ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role       = "AWSReservedSSO_ReadOnlyAccess_b919b7269094a688"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAWSControlTower_AWSControlTowerAccountServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSControlTowerAccountServiceRolePolicy"
  role       = "AWSServiceRoleForAWSControlTower"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonGuardDutyMalwareProtection_AmazonGuardDutyMalwareProtectionServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonGuardDutyMalwareProtectionServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonGuardDutyMalwareProtection"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonGuardDuty_AmazonGuardDutyServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonGuardDutyServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonGuardDuty"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonSSM_AmazonSSMServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonSSMServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonSSM"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForBackup_AWSBackupServiceLinkedRolePolicyForBackup" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSBackupServiceLinkedRolePolicyForBackup"
  role       = "AWSServiceRoleForBackup"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForCloudFormationStackSetsOrgMember_CloudFormationStackSetsOrgMemberServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/CloudFormationStackSetsOrgMemberServiceRolePolicy"
  role       = "AWSServiceRoleForCloudFormationStackSetsOrgMember"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForCloudTrail_CloudTrailServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/CloudTrailServiceRolePolicy"
  role       = "AWSServiceRoleForCloudTrail"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForComputeOptimizer_ComputeOptimizerServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ComputeOptimizerServiceRolePolicy"
  role       = "AWSServiceRoleForComputeOptimizer"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForConfigMultiAccountSetup_AWSConfigMultiAccountSetupPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSConfigMultiAccountSetupPolicy"
  role       = "AWSServiceRoleForConfigMultiAccountSetup"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForConfig_AWSConfigServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSConfigServiceRolePolicy"
  role       = "AWSServiceRoleForConfig"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForOrganizations_AWSOrganizationsServiceTrustPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = "AWSServiceRoleForOrganizations"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSSO_AWSSSOServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"
  role       = "AWSServiceRoleForSSO"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSecurityHub_AWSSecurityHubServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSecurityHubServiceRolePolicy"
  role       = "AWSServiceRoleForSecurityHub"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForServiceQuotas_ServiceQuotasServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ServiceQuotasServiceRolePolicy"
  role       = "AWSServiceRoleForServiceQuotas"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--CloudHealth-CF-Policy-RO-shoprite_CloudHealth-CF-Policy-RO-shoprite" {
  policy_arn = "arn:aws:iam::335339962974:policy/CloudHealth-CF-Policy-RO-shoprite"
  role       = "CloudHealth-CF-Policy-RO-shoprite"
}

resource "aws_iam_role_policy_attachment" "tfer--CloudWatch-CrossAccountSharingRole_CloudWatchAutomaticDashboardsAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAutomaticDashboardsAccess"
  role       = "CloudWatch-CrossAccountSharingRole"
}

resource "aws_iam_role_policy_attachment" "tfer--CloudWatch-CrossAccountSharingRole_CloudWatchReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess"
  role       = "CloudWatch-CrossAccountSharingRole"
}

resource "aws_iam_role_policy_attachment" "tfer--PrismaCloudRole-member_SecurityAudit" {
  policy_arn = "arn:aws:iam::aws:policy/SecurityAudit"
  role       = "PrismaCloudRole-member"
}

resource "aws_iam_role_policy_attachment" "tfer--PrismaCloudRole-member_prisma_cloud_1-1169731755537611776-PrismaCloudRole-member" {
  policy_arn = "arn:aws:iam::335339962974:policy/prisma_cloud_1-1169731755537611776-PrismaCloudRole-member"
  role       = "PrismaCloudRole-member"
}

resource "aws_iam_role_policy_attachment" "tfer--PrismaCloudRole-member_prisma_cloud_2-1169731755537611776-PrismaCloudRole-member" {
  policy_arn = "arn:aws:iam::335339962974:policy/prisma_cloud_2-1169731755537611776-PrismaCloudRole-member"
  role       = "PrismaCloudRole-member"
}

resource "aws_iam_role_policy_attachment" "tfer--PrismaCloudRole-member_prisma_cloud_3-1169731755537611776-PrismaCloudRole-member" {
  policy_arn = "arn:aws:iam::335339962974:policy/prisma_cloud_3-1169731755537611776-PrismaCloudRole-member"
  role       = "PrismaCloudRole-member"
}

resource "aws_iam_role_policy_attachment" "tfer--PrismaCloudRole-member_prisma_cloud_4-1169731755537611776-PrismaCloudRole-member" {
  policy_arn = "arn:aws:iam::335339962974:policy/prisma_cloud_4-1169731755537611776-PrismaCloudRole-member"
  role       = "PrismaCloudRole-member"
}

resource "aws_iam_role_policy_attachment" "tfer--PrismaCloudRole-member_prisma_cloud_5-1169731755537611776-PrismaCloudRole-member" {
  policy_arn = "arn:aws:iam::335339962974:policy/prisma_cloud_5-1169731755537611776-PrismaCloudRole-member"
  role       = "PrismaCloudRole-member"
}

resource "aws_iam_role_policy_attachment" "tfer--PrismaCloudRole-member_prisma_cloud_6-1169731755537611776-PrismaCloudRole-member" {
  policy_arn = "arn:aws:iam::335339962974:policy/prisma_cloud_6-1169731755537611776-PrismaCloudRole-member"
  role       = "PrismaCloudRole-member"
}

resource "aws_iam_role_policy_attachment" "tfer--PrismaCloudRole-member_prisma_cloud_7-1169731755537611776-PrismaCloudRole-member" {
  policy_arn = "arn:aws:iam::335339962974:policy/prisma_cloud_7-1169731755537611776-PrismaCloudRole-member"
  role       = "PrismaCloudRole-member"
}

resource "aws_iam_role_policy_attachment" "tfer--Role-backup-central-vir_AWSBackupServiceRolePolicyForBackup" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup"
  role       = "Role-backup-central-vir"
}

resource "aws_iam_role_policy_attachment" "tfer--Role-backup-central-vir_AWSBackupServiceRolePolicyForRestores" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForRestores"
  role       = "Role-backup-central-vir"
}

resource "aws_iam_role_policy_attachment" "tfer--Role-backup-central-vir_AWSBackupServiceRolePolicyForS3Backup" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBackupServiceRolePolicyForS3Backup"
  role       = "Role-backup-central-vir"
}

resource "aws_iam_role_policy_attachment" "tfer--Role-backup-central-vir_AWSBackupServiceRolePolicyForS3Restore" {
  policy_arn = "arn:aws:iam::aws:policy/AWSBackupServiceRolePolicyForS3Restore"
  role       = "Role-backup-central-vir"
}

resource "aws_iam_role_policy_attachment" "tfer--Role-backup-central_AWSBackupServiceRolePolicyForBackup" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup"
  role       = "Role-backup-central"
}

resource "aws_iam_role_policy_attachment" "tfer--Role-backup-central_AWSBackupServiceRolePolicyForRestores" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForRestores"
  role       = "Role-backup-central"
}

resource "aws_iam_role_policy_attachment" "tfer--StackSet-StackSet-BackupV-EbsEncryptionByDefaultLa-MZILSNI5K6Y2_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "StackSet-StackSet-BackupV-EbsEncryptionByDefaultLa-MZILSNI5K6Y2"
}

resource "aws_iam_role_policy_attachment" "tfer--StackSet-StackSet-BackupV-EbsEncryptionByDefaultLa-ZPB4AQKAIY6N_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "StackSet-StackSet-BackupV-EbsEncryptionByDefaultLa-ZPB4AQKAIY6N"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-controltower-AdministratorExecutionRole_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "aws-controltower-AdministratorExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-controltower-ConfigRecorderRole_AWS_ConfigRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWS_ConfigRole"
  role       = "aws-controltower-ConfigRecorderRole"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-controltower-ConfigRecorderRole_ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role       = "aws-controltower-ConfigRecorderRole"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-controltower-ForwardSnsNotificationRole_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "aws-controltower-ForwardSnsNotificationRole"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-controltower-ReadOnlyExecutionRole_ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role       = "aws-controltower-ReadOnlyExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--stacksets-exec-db5abadef3b60bd25596d78ce782dc2c_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "stacksets-exec-db5abadef3b60bd25596d78ce782dc2c"
}
