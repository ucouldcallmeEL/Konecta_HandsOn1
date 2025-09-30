resource "aws_iam_role" "tfer--AWS-QuickSetup-AutomationRole-eu-west-1-20ppj" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "AWS-QuickSetup-AutomationPolicy-AddRemoveNameTag-eu-west-1-20ppj"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:CreateTags\",\"ec2:DeleteTags\"],\"Condition\":{\"ForAllValues:StringEquals\":{\"aws:TagKeys\":\"QSConfigName-20ppj\"}},\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  inline_policy {
    name   = "AWS-QuickSetup-AutomationPolicy-IAM-eu-west-1-20ppj"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"iam:AttachRolePolicy\"],\"Condition\":{\"ArnEquals\":{\"iam:PolicyARN\":[\"arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore\",\"arn:aws:iam::335339962974:policy/ssm/quicksetup/patchpolicy/aws-quicksetup-patchpolicy-baselineoverrides-s3\"]}},\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\"]},{\"Action\":[\"iam:TagRole\"],\"Condition\":{\"ForAllValues:StringEquals\":{\"aws:TagKeys\":\"QSConfigId-20ppj\"}},\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\"]},{\"Action\":[\"iam:TagRole\",\"iam:AttachRolePolicy\"],\"Effect\":\"Deny\",\"Resource\":\"arn:aws:iam::335339962974:role/AWS-QuickSetup-AutomationRole-*\"},{\"Action\":[\"iam:CreatePolicy\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:policy/ssm/quicksetup/patchpolicy/aws-quicksetup-patchpolicy-baselineoverrides-s3\"},{\"Action\":[\"iam:PassRole\"],\"Condition\":{\"StringEquals\":{\"iam:PassedToService\":[\"ec2.amazonaws.com\"]}},\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\"},{\"Action\":[\"iam:PassRole\"],\"Condition\":{\"StringEquals\":{\"iam:PassedToService\":[\"ssm.amazonaws.com\"]}},\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\"},{\"Action\":[\"ec2:AssociateIamInstanceProfile\"],\"Condition\":{\"StringEquals\":{\"ec2:NewInstanceProfile\":\"arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup\"}},\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"iam:AddRoleToInstanceProfile\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup\"},{\"Action\":[\"iam:CreateRole\",\"iam:GetRole\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\"},{\"Action\":[\"iam:CreateInstanceProfile\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup\"},{\"Action\":[\"ec2:DescribeIamInstanceProfileAssociations\",\"ec2:DescribeInstances\",\"iam:GetInstanceProfile\",\"iam:ListInstanceProfilesForRole\",\"ssm:DescribeInstanceInformation\",\"ssm:UpdateManagedInstanceRole\",\"ssm:GetAutomationExecution\",\"ssm:StartAutomationExecution\"],\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"iam:PassRole\"],\"Condition\":{\"StringEquals\":{\"iam:PassedToService\":[\"ssm.amazonaws.com\"]}},\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:role/AWS-QuickSetup-AutomationRole-eu-west-1-20ppj\"}]}"
  }

  inline_policy {
    name   = "AWS-QuickSetup-AutomationPolicy-NameTagRemediation-eu-west-1-20ppj"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ssm:RemoveTagsFromResource\",\"ssm:GetInventory\",\"ssm:AddTagsToResource\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  max_session_duration = "3600"
  name                 = "AWS-QuickSetup-AutomationRole-eu-west-1-20ppj"
  path                 = "/"

  tags = {
    QuickSetupID      = "20ppj"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.1"
  }

  tags_all = {
    QuickSetupID      = "20ppj"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.1"
  }
}

resource "aws_iam_role" "tfer--AWS-QuickSetup-AutomationRole-us-east-1-20ppj" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "AWS-QuickSetup-AutomationPolicy-AddRemoveNameTag-us-east-1-20ppj"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:CreateTags\",\"ec2:DeleteTags\"],\"Condition\":{\"ForAllValues:StringEquals\":{\"aws:TagKeys\":\"QSConfigName-20ppj\"}},\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  inline_policy {
    name   = "AWS-QuickSetup-AutomationPolicy-IAM-us-east-1-20ppj"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"iam:AttachRolePolicy\"],\"Condition\":{\"ArnEquals\":{\"iam:PolicyARN\":[\"arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore\",\"arn:aws:iam::335339962974:policy/ssm/quicksetup/patchpolicy/aws-quicksetup-patchpolicy-baselineoverrides-s3\"]}},\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\"]},{\"Action\":[\"iam:TagRole\"],\"Condition\":{\"ForAllValues:StringEquals\":{\"aws:TagKeys\":\"QSConfigId-20ppj\"}},\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\"]},{\"Action\":[\"iam:TagRole\",\"iam:AttachRolePolicy\"],\"Effect\":\"Deny\",\"Resource\":\"arn:aws:iam::335339962974:role/AWS-QuickSetup-AutomationRole-*\"},{\"Action\":[\"iam:CreatePolicy\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:policy/ssm/quicksetup/patchpolicy/aws-quicksetup-patchpolicy-baselineoverrides-s3\"},{\"Action\":[\"iam:PassRole\"],\"Condition\":{\"StringEquals\":{\"iam:PassedToService\":[\"ec2.amazonaws.com\"]}},\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\"},{\"Action\":[\"iam:PassRole\"],\"Condition\":{\"StringEquals\":{\"iam:PassedToService\":[\"ssm.amazonaws.com\"]}},\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\"},{\"Action\":[\"ec2:AssociateIamInstanceProfile\"],\"Condition\":{\"StringEquals\":{\"ec2:NewInstanceProfile\":\"arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup\"}},\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"iam:AddRoleToInstanceProfile\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup\"},{\"Action\":[\"iam:CreateRole\",\"iam:GetRole\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\"},{\"Action\":[\"iam:CreateInstanceProfile\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup\"},{\"Action\":[\"ec2:DescribeIamInstanceProfileAssociations\",\"ec2:DescribeInstances\",\"iam:GetInstanceProfile\",\"iam:ListInstanceProfilesForRole\",\"ssm:DescribeInstanceInformation\",\"ssm:UpdateManagedInstanceRole\",\"ssm:GetAutomationExecution\",\"ssm:StartAutomationExecution\"],\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"iam:PassRole\"],\"Condition\":{\"StringEquals\":{\"iam:PassedToService\":[\"ssm.amazonaws.com\"]}},\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::335339962974:role/AWS-QuickSetup-AutomationRole-us-east-1-20ppj\"}]}"
  }

  inline_policy {
    name   = "AWS-QuickSetup-AutomationPolicy-NameTagRemediation-us-east-1-20ppj"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ssm:RemoveTagsFromResource\",\"ssm:GetInventory\",\"ssm:AddTagsToResource\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  max_session_duration = "3600"
  name                 = "AWS-QuickSetup-AutomationRole-us-east-1-20ppj"
  path                 = "/"

  tags = {
    QuickSetupID      = "20ppj"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.1"
  }

  tags_all = {
    QuickSetupID      = "20ppj"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.1"
  }
}

resource "aws_iam_role" "tfer--AWS-QuickSetup-EnableExplorer-eu-west-1-20ppj" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "SSMQuickSetupEnableExplorerInlinePolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"iam:ListRoles\",\"config:DescribeConfigurationRecorders\",\"compute-optimizer:GetEnrollmentStatus\",\"support:DescribeTrustedAdvisorChecks\"],\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"ssm:UpdateServiceSetting\",\"ssm:GetServiceSetting\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:ssm:*:*:servicesetting/ssm/opsitem/ssm-patchmanager\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsitem/EC2\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ExplorerOnboarded\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/Association\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ComputeOptimizer\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ConfigCompliance\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/OpsData-TrustedAdvisor\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/SupportCenterCase\"]},{\"Action\":[\"iam:CreateServiceLinkedRole\"],\"Condition\":{\"StringEquals\":{\"iam:AWSServiceName\":\"ssm.amazonaws.com\"}},\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::*:role/aws-service-role/ssm.amazonaws.com/AWSServiceRoleForAmazonSSM\"}]}"
  }

  max_session_duration = "3600"
  name                 = "AWS-QuickSetup-EnableExplorer-eu-west-1-20ppj"
  path                 = "/"

  tags = {
    QuickSetupID      = "20ppj"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.1"
  }

  tags_all = {
    QuickSetupID      = "20ppj"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.1"
  }
}

resource "aws_iam_role" "tfer--AWS-QuickSetup-EnableExplorer-us-east-1-20ppj" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "SSMQuickSetupEnableExplorerInlinePolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"iam:ListRoles\",\"config:DescribeConfigurationRecorders\",\"compute-optimizer:GetEnrollmentStatus\",\"support:DescribeTrustedAdvisorChecks\"],\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"ssm:UpdateServiceSetting\",\"ssm:GetServiceSetting\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:ssm:*:*:servicesetting/ssm/opsitem/ssm-patchmanager\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsitem/EC2\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ExplorerOnboarded\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/Association\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ComputeOptimizer\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ConfigCompliance\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/OpsData-TrustedAdvisor\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/SupportCenterCase\"]},{\"Action\":[\"iam:CreateServiceLinkedRole\"],\"Condition\":{\"StringEquals\":{\"iam:AWSServiceName\":\"ssm.amazonaws.com\"}},\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::*:role/aws-service-role/ssm.amazonaws.com/AWSServiceRoleForAmazonSSM\"}]}"
  }

  max_session_duration = "3600"
  name                 = "AWS-QuickSetup-EnableExplorer-us-east-1-20ppj"
  path                 = "/"

  tags = {
    QuickSetupID      = "20ppj"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.1"
  }

  tags_all = {
    QuickSetupID      = "20ppj"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.1"
  }
}

resource "aws_iam_role" "tfer--AWS-QuickSetup-HostMgmtRole-eu-west-3-9je9i" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "AWS-QuickSetup-SSMHostMgmt-CreateAndAttachRoleInlinePolicy-eu-west-3-9je9i"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ssm:GetAutomationExecution\",\"ec2:DescribeIamInstanceProfileAssociations\",\"ec2:DisassociateIamInstanceProfile\",\"ec2:DescribeInstances\",\"ssm:StartAutomationExecution\",\"iam:GetInstanceProfile\",\"iam:ListInstanceProfilesForRole\"],\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"iam:AttachRolePolicy\"],\"Condition\":{\"ArnEquals\":{\"iam:PolicyARN\":[\"arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore\",\"arn:aws:iam::aws:policy/AmazonSSMPatchAssociation\"]}},\"Effect\":\"Allow\",\"Resource\":[\"*\"]},{\"Action\":[\"iam:AddRoleToInstanceProfile\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup\"]},{\"Action\":[\"ec2:AssociateIamInstanceProfile\"],\"Condition\":{\"StringEquals\":{\"ec2:NewInstanceProfile\":\"arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup\"}},\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"iam:CreateInstanceProfile\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup\"]},{\"Action\":[\"iam:GetRole\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\",\"arn:aws:iam::335339962974:role/AWS-QuickSetup-HostMgmtRole-eu-west-3-9je9i\"]},{\"Action\":[\"iam:PassRole\"],\"Condition\":{\"StringEquals\":{\"iam:PassedToService\":[\"ec2.amazonaws.com\"]}},\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\"]},{\"Action\":[\"iam:PassRole\"],\"Condition\":{\"StringEquals\":{\"iam:PassedToService\":[\"ssm.amazonaws.com\"]}},\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::335339962974:role/AWS-QuickSetup-HostMgmtRole-eu-west-3-9je9i\"]},{\"Action\":[\"iam:CreateRole\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup\"]}]}"
  }

  inline_policy {
    name   = "SSMQuickSetupEnableExplorerInlinePolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"iam:ListRoles\",\"config:DescribeConfigurationRecorders\",\"compute-optimizer:GetEnrollmentStatus\",\"support:DescribeTrustedAdvisorChecks\"],\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"ssm:UpdateServiceSetting\",\"ssm:GetServiceSetting\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:ssm:*:*:servicesetting/ssm/opsitem/ssm-patchmanager\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsitem/EC2\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ExplorerOnboarded\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/Association\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ComputeOptimizer\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ConfigCompliance\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/OpsData-TrustedAdvisor\",\"arn:aws:ssm:*:*:servicesetting/ssm/opsdata/SupportCenterCase\"]},{\"Action\":[\"iam:CreateServiceLinkedRole\"],\"Condition\":{\"StringEquals\":{\"iam:AWSServiceName\":\"ssm.amazonaws.com\"}},\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::*:role/aws-service-role/ssm.amazonaws.com/AWSServiceRoleForAmazonSSM\"}]}"
  }

  max_session_duration = "3600"
  name                 = "AWS-QuickSetup-HostMgmtRole-eu-west-3-9je9i"
  path                 = "/"

  tags = {
    QuickSetupID      = "9je9i"
    QuickSetupType    = "Host Management"
    QuickSetupVersion = "2.0"
  }

  tags_all = {
    QuickSetupID      = "9je9i"
    QuickSetupType    = "Host Management"
    QuickSetupVersion = "2.0"
  }
}

resource "aws_iam_role" "tfer--AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-eu-west-1-20ppj" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "AWS-QuickSetup-LambdaPolicy-NameTagDelete-eu-west-1-20ppj"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ssm:DescribeAssociationExecutions\",\"ssm:UpdateAssociation\",\"ssm:DescribeAssociation\"],\"Effect\":\"Allow\",\"Resource\":[\"*\"]}]}"
  }

  inline_policy {
    name   = "AWS-QuickSetup-LambdaPolicy-PassRole-eu-west-1-20ppj"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"iam:PassRole\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::335339962974:role/AWS-QuickSetup-AutomationRole-eu-west-1-20ppj\"]}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-eu-west-1-20ppj"
  path                 = "/"

  tags = {
    QuickSetupID      = "20ppj"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.1"
  }

  tags_all = {
    QuickSetupID      = "20ppj"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.1"
  }
}

resource "aws_iam_role" "tfer--AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-us-east-1-20ppj" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "AWS-QuickSetup-LambdaPolicy-NameTagDelete-us-east-1-20ppj"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ssm:DescribeAssociationExecutions\",\"ssm:UpdateAssociation\",\"ssm:DescribeAssociation\"],\"Effect\":\"Allow\",\"Resource\":[\"*\"]}]}"
  }

  inline_policy {
    name   = "AWS-QuickSetup-LambdaPolicy-PassRole-us-east-1-20ppj"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"iam:PassRole\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::335339962974:role/AWS-QuickSetup-AutomationRole-us-east-1-20ppj\"]}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-us-east-1-20ppj"
  path                 = "/"

  tags = {
    QuickSetupID      = "20ppj"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.1"
  }

  tags_all = {
    QuickSetupID      = "20ppj"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.1"
  }
}

resource "aws_iam_role" "tfer--AWSControlTowerExecution" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::686515602213:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "AWSControlTowerExecution"
  path                 = "/"
}

resource "aws_iam_role" "tfer--AWSReservedSSO_Administrador_711960b6a71d88c3" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::335339962974:saml-provider/AWSSSO_cd736d3b1c45e554_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Administrador"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_Administrador_711960b6a71d88c3"
  path                 = "/aws-reserved/sso.amazonaws.com/eu-west-1/"
}

resource "aws_iam_role" "tfer--AWSReservedSSO_AdministratorAccess_a9007a8e5d9de17e" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::335339962974:saml-provider/AWSSSO_cd736d3b1c45e554_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "AdministratorAccess"

  inline_policy {
    name   = "AwsSSOInlinePolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"lambda:GetFunction\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:lambda:us-east-1:383174758759:function:cdnHeaderRemover:1\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonEC2FullAccess"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_AdministratorAccess_a9007a8e5d9de17e"
  path                 = "/aws-reserved/sso.amazonaws.com/eu-west-1/"
}

resource "aws_iam_role" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::335339962974:saml-provider/AWSSSO_cd736d3b1c45e554_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Permisos de administracion sobre cloudformation, cloudwatch , elasticbeanstalk , s3 , rds , api , dinamodb, amplify y lambdas"

  inline_policy {
    name   = "AwsSSOInlinePolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"cloudtrail:*\",\"cloudwatch:*\",\"events:*\",\"logs:*\",\"sqs:*\",\"cognito-idp:*\",\"elasticloadbalancing:*\",\"iam:TagRole\",\"ec2:CreateNetworkInterfacePermission\",\"ec2:CreateNetworkInterface\",\"ssm:GetParameter\",\"appsync:ListGraphqlApis\",\"lambda:*\",\"cloudfront:*\",\"kms:GetPublicKey\",\"kms:GetKeyRotationStatus\",\"kms:GetKeyPolicy\",\"kms:DescribeKey\",\"kms:ListKeyPolicies\",\"kms:ListResourceTags\",\"kms:ListKeys\",\"kms:ListAliases\",\"kms:Decrypt\",\"kms:Encrypt\",\"sns:Publish\",\"pi:GetResourceMetrics\",\"pi:DescribeDimensionKeys\",\"rds:DescribeDBLogFiles\",\"rds:DownloadCompleteDBLogFile\",\"rds:DownloadDBLogFilePortion\",\"ecr:GetAuthorizationToken\",\"ecr:DescribeRepositories\",\"ecr:ListImages\",\"ecr:CreateRepository\",\"ecr:GetRepositoryPolicy\",\"ecr:InitiateLayerUpload\",\"ecr:UploadLayerPart\",\"ecr:CompleteLayerUpload\",\"ecr:PutImage\",\"ecr:StartImageScan\",\"ecr:DescribeImageScanFindings\"],\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"ElasticBeanstalkHistorialCambios\"},{\"Action\":[\"waf:*\",\"waf-regional:*\",\"wafv2:*\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:waf:*:997630210818:*\",\"arn:aws:wafv2:*:997630210818:*\",\"arn:aws:waf:*:995993274762:*\",\"arn:aws:wafv2:*:995993274762:*\",\"arn:aws:waf:*:669743570680:*\",\"arn:aws:wafv2:*:669743570680:*\",\"arn:aws:waf:*:974681114258:*\",\"arn:aws:wafv2:*:974681114258:*\",\"arn:aws:waf:*:999251388412:*\",\"arn:aws:wafv2:*:999251388412:*\"]},{\"Action\":[\"ec2:DescribeVpcEndpoints\",\"ec2:DescribeVpcs\",\"ec2:DescribeSubnets\",\"ec2:DescribeRouteTables\"],\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"AllowVpcDescribe\"},{\"Action\":\"ec2:CreateVpcEndpoint\",\"Condition\":{\"StringEquals\":{\"aws:RequestedRegion\":\"eu-west-1\"}},\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"AllowCreateVpcEndpoint\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSCloudFormationFullAccess", "arn:aws:iam::aws:policy/AWSLambda_FullAccess", "arn:aws:iam::aws:policy/AWSStepFunctionsConsoleFullAccess", "arn:aws:iam::aws:policy/AWSSupportAccess", "arn:aws:iam::aws:policy/AdministratorAccess-AWSElasticBeanstalk", "arn:aws:iam::aws:policy/AdministratorAccess-Amplify", "arn:aws:iam::aws:policy/AmazonAPIGatewayAdministrator", "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess", "arn:aws:iam::aws:policy/AmazonECS_FullAccess", "arn:aws:iam::aws:policy/AmazonElasticFileSystemFullAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/AmazonSESFullAccess", "arn:aws:iam::aws:policy/AmazonSSMFullAccess", "arn:aws:iam::aws:policy/CloudWatchFullAccess", "arn:aws:iam::aws:policy/SecretsManagerReadWrite", "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkRoleCore"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
  path                 = "/aws-reserved/sso.amazonaws.com/eu-west-1/"
}

resource "aws_iam_role" "tfer--AWSReservedSSO_Gestion_Nice_417cb1d3d1b4b2e3" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::335339962974:saml-provider/AWSSSO_cd736d3b1c45e554_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Gestion_Nice"

  inline_policy {
    name   = "AwsSSOInlinePolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"s3:ListAllMyBuckets\",\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"s3:ListBucket\",\"s3:GetBucketLocation\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::grabaciones-nice-konecta\",\"Sid\":\"VisualEditor0\"},{\"Action\":[\"s3:PutObject\",\"s3:GetObjectAcl\",\"s3:GetObject\",\"s3:DeleteObjectVersion\",\"s3:DeleteObject\",\"s3:PutObjectAcl\",\"s3:GetObjectVersion\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::grabaciones-nice-konecta/*\",\"Sid\":\"VisualEditor1\"}]}"
  }

  max_session_duration = "43200"
  name                 = "AWSReservedSSO_Gestion_Nice_417cb1d3d1b4b2e3"
  path                 = "/aws-reserved/sso.amazonaws.com/eu-west-1/"
}

resource "aws_iam_role" "tfer--AWSReservedSSO_ReadOnlyAccess_b919b7269094a688" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::335339962974:saml-provider/AWSSSO_cd736d3b1c45e554_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_ReadOnlyAccess_b919b7269094a688"
  path                 = "/aws-reserved/sso.amazonaws.com/eu-west-1/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAWSControlTower" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "controltower.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Provides access to AWS Resources managed or used by AWS Control Tower"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSControlTowerAccountServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAWSControlTower"
  path                 = "/aws-service-role/controltower.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonGuardDuty" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "guardduty.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonGuardDutyServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonGuardDuty"
  path                 = "/aws-service-role/guardduty.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonGuardDutyMalwareProtection" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "malware-protection.guardduty.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonGuardDutyMalwareProtectionServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonGuardDutyMalwareProtection"
  path                 = "/aws-service-role/malware-protection.guardduty.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonSSM" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Provides access to AWS Resources managed or used by Amazon SSM."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonSSMServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonSSM"
  path                 = "/aws-service-role/ssm.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForBackup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "backup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSBackupServiceLinkedRolePolicyForBackup"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForBackup"
  path                 = "/aws-service-role/backup.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForCloudFormationStackSetsOrgMember" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "member.org.stacksets.cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service linked role for CloudFormation StackSets (Organization Member)"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/CloudFormationStackSetsOrgMemberServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCloudFormationStackSetsOrgMember"
  path                 = "/aws-service-role/member.org.stacksets.cloudformation.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForCloudTrail" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudtrail.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/CloudTrailServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCloudTrail"
  path                 = "/aws-service-role/cloudtrail.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForComputeOptimizer" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "compute-optimizer.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ComputeOptimizerServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForComputeOptimizer"
  path                 = "/aws-service-role/compute-optimizer.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForConfig" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "config.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSConfigServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForConfig"
  path                 = "/aws-service-role/config.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForConfigMultiAccountSetup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "config-multiaccountsetup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSConfigMultiAccountSetupPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForConfigMultiAccountSetup"
  path                 = "/aws-service-role/config-multiaccountsetup.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForOrganizations" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "organizations.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForOrganizations"
  path                 = "/aws-service-role/organizations.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSSO" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sso.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSSO"
  path                 = "/aws-service-role/sso.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSecurityHub" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "securityhub.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSecurityHubServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSecurityHub"
  path                 = "/aws-service-role/securityhub.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForServiceQuotas" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "servicequotas.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "A service-linked role is required for Service Quotas to access your service limits."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ServiceQuotasServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForServiceQuotas"
  path                 = "/aws-service-role/servicequotas.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "tfer--CloudHealth-CF-Policy-RO-shoprite" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "cf2913fc5ca64af685630ecdc34ea3"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::454464851268:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::335339962974:policy/CloudHealth-CF-Policy-RO-shoprite"]
  max_session_duration = "3600"
  name                 = "CloudHealth-CF-Policy-RO-shoprite"
  path                 = "/"

  tags = {
    Name = "StackSet-CloudHealth"
  }

  tags_all = {
    Name = "StackSet-CloudHealth"
  }
}

resource "aws_iam_role" "tfer--CloudWatch-CrossAccountSharingRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::532498934072:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/CloudWatchAutomaticDashboardsAccess", "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "CloudWatch-CrossAccountSharingRole"
  path                 = "/"

  tags = {
    Name     = "SSCloudWatchCrossAccountSharing"
    Platform = "Cloudformation"
    Resource = "StackSet"
  }

  tags_all = {
    Name     = "SSCloudWatchCrossAccountSharing"
    Platform = "Cloudformation"
    Resource = "StackSet"
  }
}

resource "aws_iam_role" "tfer--PrismaCloudRole-member" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "55995fb8-bede-41a3-bd69-13c6b94e0e0d"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::188619942792:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::335339962974:policy/prisma_cloud_1-1169731755537611776-PrismaCloudRole-member", "arn:aws:iam::335339962974:policy/prisma_cloud_2-1169731755537611776-PrismaCloudRole-member", "arn:aws:iam::335339962974:policy/prisma_cloud_3-1169731755537611776-PrismaCloudRole-member", "arn:aws:iam::335339962974:policy/prisma_cloud_4-1169731755537611776-PrismaCloudRole-member", "arn:aws:iam::335339962974:policy/prisma_cloud_5-1169731755537611776-PrismaCloudRole-member", "arn:aws:iam::335339962974:policy/prisma_cloud_6-1169731755537611776-PrismaCloudRole-member", "arn:aws:iam::335339962974:policy/prisma_cloud_7-1169731755537611776-PrismaCloudRole-member", "arn:aws:iam::aws:policy/SecurityAudit"]
  max_session_duration = "43200"
  name                 = "PrismaCloudRole-member"
  path                 = "/"
}

resource "aws_iam_role" "tfer--Role-backup-central" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "backup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows AWS Backup to access AWS services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup", "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForRestores"]
  max_session_duration = "3600"
  name                 = "Role-backup-central"
  path                 = "/"

  tags = {
    Platform = "CloudFormation"
  }

  tags_all = {
    Platform = "CloudFormation"
  }
}

resource "aws_iam_role" "tfer--Role-backup-central-vir" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "backup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows AWS Backup to access AWS services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSBackupServiceRolePolicyForS3Backup", "arn:aws:iam::aws:policy/AWSBackupServiceRolePolicyForS3Restore", "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup", "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForRestores"]
  max_session_duration = "3600"
  name                 = "Role-backup-central-vir"
  path                 = "/"

  tags = {
    Country   = "Espana"
    CreatedBy = "Milton Escobar"
    Name      = "StackSet-BackupVaultAccount-Vir-Add"
    Platform  = "CloudFormation"
  }

  tags_all = {
    Country   = "Espana"
    CreatedBy = "Milton Escobar"
    Name      = "StackSet-BackupVaultAccount-Vir-Add"
    Platform  = "CloudFormation"
  }
}

resource "aws_iam_role" "tfer--StackSet-StackSet-BackupV-EbsEncryptionByDefaultLa-MZILSNI5K6Y2" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:DisableEbsEncryptionByDefault\",\"ec2:EnableEbsEncryptionByDefault\",\"ec2:GetEbsDefaultKmsKeyId\",\"ec2:GetEbsEncryptionByDefault\",\"ec2:ModifyEbsDefaultKmsKeyId\",\"ec2:ResetEbsDefaultKmsKeyId\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "StackSet-StackSet-BackupV-EbsEncryptionByDefaultLa-MZILSNI5K6Y2"
  path                 = "/"
}

resource "aws_iam_role" "tfer--StackSet-StackSet-BackupV-EbsEncryptionByDefaultLa-ZPB4AQKAIY6N" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "root"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:DisableEbsEncryptionByDefault\",\"ec2:EnableEbsEncryptionByDefault\",\"ec2:GetEbsDefaultKmsKeyId\",\"ec2:GetEbsEncryptionByDefault\",\"ec2:ModifyEbsDefaultKmsKeyId\",\"ec2:ResetEbsDefaultKmsKeyId\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "StackSet-StackSet-BackupV-EbsEncryptionByDefaultLa-ZPB4AQKAIY6N"
  path                 = "/"

  tags = {
    Country   = "Espana"
    CreatedBy = "Milton Escobar"
    Name      = "StackSet-BackupVaultAccount-Vir-Add"
    Platform  = "Cloudformation"
  }

  tags_all = {
    Country   = "Espana"
    CreatedBy = "Milton Escobar"
    Name      = "StackSet-BackupVaultAccount-Vir-Add"
    Platform  = "Cloudformation"
  }
}

resource "aws_iam_role" "tfer--StackSet-StackSetPasswordPolicy-e358cbe-LambdaRole-WSV9GOUAI8R2" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "iam"
    policy = "{\"Statement\":[{\"Action\":[\"iam:UpdateAccountPasswordPolicy\",\"iam:DeleteAccountPasswordPolicy\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  inline_policy {
    name   = "lambda"
    policy = "{\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:logs:eu-west-1:335339962974:log-group:/aws/lambda/StackSet-StackSetPasswordPolicy-e-LambdaFunctionV2-NAOzU9UNuWCd:*\"}]}"
  }

  max_session_duration = "3600"
  name                 = "StackSet-StackSetPasswordPolicy-e358cbe-LambdaRole-WSV9GOUAI8R2"
  path                 = "/"
}

resource "aws_iam_role" "tfer--aws-controltower-AdministratorExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::603321434203:role/aws-controltower-AuditAdministratorRole"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "aws-controltower-AdministratorExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--aws-controltower-ConfigRecorderRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "config.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess", "arn:aws:iam::aws:policy/service-role/AWS_ConfigRole"]
  max_session_duration = "3600"
  name                 = "aws-controltower-ConfigRecorderRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--aws-controltower-ForwardSnsNotificationRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "sns"
    policy = "{\"Statement\":[{\"Action\":[\"sns:publish\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:sns:*:603321434203:aws-controltower-AggregateSecurityNotifications\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "aws-controltower-ForwardSnsNotificationRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--aws-controltower-ReadOnlyExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::603321434203:role/aws-controltower-AuditReadOnlyRole"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
  max_session_duration = "3600"
  name                 = "aws-controltower-ReadOnlyExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--stacksets-exec-db5abadef3b60bd25596d78ce782dc2c" {
  assume_role_policy = <<POLICY
{
  "Id": "stacksets-exec-db5abadef3b60bd25596d78ce782dc2c-assume-role-policy",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::686515602213:role/aws-service-role/stacksets.cloudformation.amazonaws.com/AWSServiceRoleForCloudFormationStackSetsOrgAdmin"
      },
      "Sid": "1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Role created by AWSCloudFormation StackSets"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "stacksets-exec-db5abadef3b60bd25596d78ce782dc2c"

  path = "/"
}
