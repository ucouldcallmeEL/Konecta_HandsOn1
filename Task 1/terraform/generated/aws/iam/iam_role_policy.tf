resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-AutomationRole-eu-west-1-20ppj_AWS-QuickSetup-AutomationPolicy-AddRemoveNameTag-eu-west-1-20ppj" {
  name = "AWS-QuickSetup-AutomationPolicy-AddRemoveNameTag-eu-west-1-20ppj"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:CreateTags",
        "ec2:DeleteTags"
      ],
      "Condition": {
        "ForAllValues:StringEquals": {
          "aws:TagKeys": "QSConfigName-20ppj"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-AutomationRole-eu-west-1-20ppj"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-AutomationRole-eu-west-1-20ppj_AWS-QuickSetup-AutomationPolicy-IAM-eu-west-1-20ppj" {
  name = "AWS-QuickSetup-AutomationPolicy-IAM-eu-west-1-20ppj"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:AttachRolePolicy"
      ],
      "Condition": {
        "ArnEquals": {
          "iam:PolicyARN": [
            "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
            "arn:aws:iam::335339962974:policy/ssm/quicksetup/patchpolicy/aws-quicksetup-patchpolicy-baselineoverrides-s3"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup"
      ]
    },
    {
      "Action": [
        "iam:TagRole"
      ],
      "Condition": {
        "ForAllValues:StringEquals": {
          "aws:TagKeys": "QSConfigId-20ppj"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup"
      ]
    },
    {
      "Action": [
        "iam:TagRole",
        "iam:AttachRolePolicy"
      ],
      "Effect": "Deny",
      "Resource": "arn:aws:iam::335339962974:role/AWS-QuickSetup-AutomationRole-*"
    },
    {
      "Action": [
        "iam:CreatePolicy"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:policy/ssm/quicksetup/patchpolicy/aws-quicksetup-patchpolicy-baselineoverrides-s3"
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": [
            "ec2.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup"
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": [
            "ssm.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup"
    },
    {
      "Action": [
        "ec2:AssociateIamInstanceProfile"
      ],
      "Condition": {
        "StringEquals": {
          "ec2:NewInstanceProfile": "arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "iam:AddRoleToInstanceProfile"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup"
    },
    {
      "Action": [
        "iam:CreateRole",
        "iam:GetRole"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup"
    },
    {
      "Action": [
        "iam:CreateInstanceProfile"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup"
    },
    {
      "Action": [
        "ec2:DescribeIamInstanceProfileAssociations",
        "ec2:DescribeInstances",
        "iam:GetInstanceProfile",
        "iam:ListInstanceProfilesForRole",
        "ssm:DescribeInstanceInformation",
        "ssm:UpdateManagedInstanceRole",
        "ssm:GetAutomationExecution",
        "ssm:StartAutomationExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": [
            "ssm.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:role/AWS-QuickSetup-AutomationRole-eu-west-1-20ppj"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-AutomationRole-eu-west-1-20ppj"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-AutomationRole-eu-west-1-20ppj_AWS-QuickSetup-AutomationPolicy-NameTagRemediation-eu-west-1-20ppj" {
  name = "AWS-QuickSetup-AutomationPolicy-NameTagRemediation-eu-west-1-20ppj"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ssm:RemoveTagsFromResource",
        "ssm:GetInventory",
        "ssm:AddTagsToResource"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-AutomationRole-eu-west-1-20ppj"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-AutomationRole-us-east-1-20ppj_AWS-QuickSetup-AutomationPolicy-AddRemoveNameTag-us-east-1-20ppj" {
  name = "AWS-QuickSetup-AutomationPolicy-AddRemoveNameTag-us-east-1-20ppj"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:CreateTags",
        "ec2:DeleteTags"
      ],
      "Condition": {
        "ForAllValues:StringEquals": {
          "aws:TagKeys": "QSConfigName-20ppj"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-AutomationRole-us-east-1-20ppj"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-AutomationRole-us-east-1-20ppj_AWS-QuickSetup-AutomationPolicy-IAM-us-east-1-20ppj" {
  name = "AWS-QuickSetup-AutomationPolicy-IAM-us-east-1-20ppj"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:AttachRolePolicy"
      ],
      "Condition": {
        "ArnEquals": {
          "iam:PolicyARN": [
            "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
            "arn:aws:iam::335339962974:policy/ssm/quicksetup/patchpolicy/aws-quicksetup-patchpolicy-baselineoverrides-s3"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup"
      ]
    },
    {
      "Action": [
        "iam:TagRole"
      ],
      "Condition": {
        "ForAllValues:StringEquals": {
          "aws:TagKeys": "QSConfigId-20ppj"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup"
      ]
    },
    {
      "Action": [
        "iam:TagRole",
        "iam:AttachRolePolicy"
      ],
      "Effect": "Deny",
      "Resource": "arn:aws:iam::335339962974:role/AWS-QuickSetup-AutomationRole-*"
    },
    {
      "Action": [
        "iam:CreatePolicy"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:policy/ssm/quicksetup/patchpolicy/aws-quicksetup-patchpolicy-baselineoverrides-s3"
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": [
            "ec2.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup"
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": [
            "ssm.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup"
    },
    {
      "Action": [
        "ec2:AssociateIamInstanceProfile"
      ],
      "Condition": {
        "StringEquals": {
          "ec2:NewInstanceProfile": "arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "iam:AddRoleToInstanceProfile"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup"
    },
    {
      "Action": [
        "iam:CreateRole",
        "iam:GetRole"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup"
    },
    {
      "Action": [
        "iam:CreateInstanceProfile"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup"
    },
    {
      "Action": [
        "ec2:DescribeIamInstanceProfileAssociations",
        "ec2:DescribeInstances",
        "iam:GetInstanceProfile",
        "iam:ListInstanceProfilesForRole",
        "ssm:DescribeInstanceInformation",
        "ssm:UpdateManagedInstanceRole",
        "ssm:GetAutomationExecution",
        "ssm:StartAutomationExecution"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": [
            "ssm.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:iam::335339962974:role/AWS-QuickSetup-AutomationRole-us-east-1-20ppj"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-AutomationRole-us-east-1-20ppj"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-AutomationRole-us-east-1-20ppj_AWS-QuickSetup-AutomationPolicy-NameTagRemediation-us-east-1-20ppj" {
  name = "AWS-QuickSetup-AutomationPolicy-NameTagRemediation-us-east-1-20ppj"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ssm:RemoveTagsFromResource",
        "ssm:GetInventory",
        "ssm:AddTagsToResource"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-AutomationRole-us-east-1-20ppj"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-EnableExplorer-eu-west-1-20ppj_SSMQuickSetupEnableExplorerInlinePolicy" {
  name = "SSMQuickSetupEnableExplorerInlinePolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:ListRoles",
        "config:DescribeConfigurationRecorders",
        "compute-optimizer:GetEnrollmentStatus",
        "support:DescribeTrustedAdvisorChecks"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ssm:UpdateServiceSetting",
        "ssm:GetServiceSetting"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ssm:*:*:servicesetting/ssm/opsitem/ssm-patchmanager",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsitem/EC2",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ExplorerOnboarded",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/Association",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ComputeOptimizer",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ConfigCompliance",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/OpsData-TrustedAdvisor",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/SupportCenterCase"
      ]
    },
    {
      "Action": [
        "iam:CreateServiceLinkedRole"
      ],
      "Condition": {
        "StringEquals": {
          "iam:AWSServiceName": "ssm.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:role/aws-service-role/ssm.amazonaws.com/AWSServiceRoleForAmazonSSM"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-EnableExplorer-eu-west-1-20ppj"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-EnableExplorer-us-east-1-20ppj_SSMQuickSetupEnableExplorerInlinePolicy" {
  name = "SSMQuickSetupEnableExplorerInlinePolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:ListRoles",
        "config:DescribeConfigurationRecorders",
        "compute-optimizer:GetEnrollmentStatus",
        "support:DescribeTrustedAdvisorChecks"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ssm:UpdateServiceSetting",
        "ssm:GetServiceSetting"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ssm:*:*:servicesetting/ssm/opsitem/ssm-patchmanager",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsitem/EC2",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ExplorerOnboarded",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/Association",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ComputeOptimizer",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ConfigCompliance",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/OpsData-TrustedAdvisor",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/SupportCenterCase"
      ]
    },
    {
      "Action": [
        "iam:CreateServiceLinkedRole"
      ],
      "Condition": {
        "StringEquals": {
          "iam:AWSServiceName": "ssm.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:role/aws-service-role/ssm.amazonaws.com/AWSServiceRoleForAmazonSSM"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-EnableExplorer-us-east-1-20ppj"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-HostMgmtRole-eu-west-3-9je9i_AWS-QuickSetup-SSMHostMgmt-CreateAndAttachRoleInlinePolicy-eu-west-3-9je9i" {
  name = "AWS-QuickSetup-SSMHostMgmt-CreateAndAttachRoleInlinePolicy-eu-west-3-9je9i"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ssm:GetAutomationExecution",
        "ec2:DescribeIamInstanceProfileAssociations",
        "ec2:DisassociateIamInstanceProfile",
        "ec2:DescribeInstances",
        "ssm:StartAutomationExecution",
        "iam:GetInstanceProfile",
        "iam:ListInstanceProfilesForRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "iam:AttachRolePolicy"
      ],
      "Condition": {
        "ArnEquals": {
          "iam:PolicyARN": [
            "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
            "arn:aws:iam::aws:policy/AmazonSSMPatchAssociation"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    },
    {
      "Action": [
        "iam:AddRoleToInstanceProfile"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup"
      ]
    },
    {
      "Action": [
        "ec2:AssociateIamInstanceProfile"
      ],
      "Condition": {
        "StringEquals": {
          "ec2:NewInstanceProfile": "arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "iam:CreateInstanceProfile"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::335339962974:instance-profile/AmazonSSMRoleForInstancesQuickSetup"
      ]
    },
    {
      "Action": [
        "iam:GetRole"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup",
        "arn:aws:iam::335339962974:role/AWS-QuickSetup-HostMgmtRole-eu-west-3-9je9i"
      ]
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": [
            "ec2.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup"
      ]
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": [
            "ssm.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::335339962974:role/AWS-QuickSetup-HostMgmtRole-eu-west-3-9je9i"
      ]
    },
    {
      "Action": [
        "iam:CreateRole"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::335339962974:role/AmazonSSMRoleForInstancesQuickSetup"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-HostMgmtRole-eu-west-3-9je9i"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-HostMgmtRole-eu-west-3-9je9i_SSMQuickSetupEnableExplorerInlinePolicy" {
  name = "SSMQuickSetupEnableExplorerInlinePolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:ListRoles",
        "config:DescribeConfigurationRecorders",
        "compute-optimizer:GetEnrollmentStatus",
        "support:DescribeTrustedAdvisorChecks"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ssm:UpdateServiceSetting",
        "ssm:GetServiceSetting"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ssm:*:*:servicesetting/ssm/opsitem/ssm-patchmanager",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsitem/EC2",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ExplorerOnboarded",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/Association",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ComputeOptimizer",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/ConfigCompliance",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/OpsData-TrustedAdvisor",
        "arn:aws:ssm:*:*:servicesetting/ssm/opsdata/SupportCenterCase"
      ]
    },
    {
      "Action": [
        "iam:CreateServiceLinkedRole"
      ],
      "Condition": {
        "StringEquals": {
          "iam:AWSServiceName": "ssm.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:role/aws-service-role/ssm.amazonaws.com/AWSServiceRoleForAmazonSSM"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-HostMgmtRole-eu-west-3-9je9i"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-eu-west-1-20ppj_AWS-QuickSetup-LambdaPolicy-NameTagDelete-eu-west-1-20ppj" {
  name = "AWS-QuickSetup-LambdaPolicy-NameTagDelete-eu-west-1-20ppj"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ssm:DescribeAssociationExecutions",
        "ssm:UpdateAssociation",
        "ssm:DescribeAssociation"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-eu-west-1-20ppj"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-eu-west-1-20ppj_AWS-QuickSetup-LambdaPolicy-PassRole-eu-west-1-20ppj" {
  name = "AWS-QuickSetup-LambdaPolicy-PassRole-eu-west-1-20ppj"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::335339962974:role/AWS-QuickSetup-AutomationRole-eu-west-1-20ppj"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-eu-west-1-20ppj"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-us-east-1-20ppj_AWS-QuickSetup-LambdaPolicy-NameTagDelete-us-east-1-20ppj" {
  name = "AWS-QuickSetup-LambdaPolicy-NameTagDelete-us-east-1-20ppj"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ssm:DescribeAssociationExecutions",
        "ssm:UpdateAssociation",
        "ssm:DescribeAssociation"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-us-east-1-20ppj"
}

resource "aws_iam_role_policy" "tfer--AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-us-east-1-20ppj_AWS-QuickSetup-LambdaPolicy-PassRole-us-east-1-20ppj" {
  name = "AWS-QuickSetup-LambdaPolicy-PassRole-us-east-1-20ppj"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::335339962974:role/AWS-QuickSetup-AutomationRole-us-east-1-20ppj"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-us-east-1-20ppj"
}

resource "aws_iam_role_policy" "tfer--AWSReservedSSO_AdministratorAccess_a9007a8e5d9de17e_AwsSSOInlinePolicy" {
  name = "AwsSSOInlinePolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "lambda:GetFunction",
      "Effect": "Allow",
      "Resource": "arn:aws:lambda:us-east-1:383174758759:function:cdnHeaderRemover:1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWSReservedSSO_AdministratorAccess_a9007a8e5d9de17e"
}

resource "aws_iam_role_policy" "tfer--AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480_AwsSSOInlinePolicy" {
  name = "AwsSSOInlinePolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudtrail:*",
        "cloudwatch:*",
        "events:*",
        "logs:*",
        "sqs:*",
        "cognito-idp:*",
        "elasticloadbalancing:*",
        "iam:TagRole",
        "ec2:CreateNetworkInterfacePermission",
        "ec2:CreateNetworkInterface",
        "ssm:GetParameter",
        "appsync:ListGraphqlApis",
        "lambda:*",
        "cloudfront:*",
        "kms:GetPublicKey",
        "kms:GetKeyRotationStatus",
        "kms:GetKeyPolicy",
        "kms:DescribeKey",
        "kms:ListKeyPolicies",
        "kms:ListResourceTags",
        "kms:ListKeys",
        "kms:ListAliases",
        "kms:Decrypt",
        "kms:Encrypt",
        "sns:Publish",
        "pi:GetResourceMetrics",
        "pi:DescribeDimensionKeys",
        "rds:DescribeDBLogFiles",
        "rds:DownloadCompleteDBLogFile",
        "rds:DownloadDBLogFilePortion",
        "ecr:GetAuthorizationToken",
        "ecr:DescribeRepositories",
        "ecr:ListImages",
        "ecr:CreateRepository",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload",
        "ecr:PutImage",
        "ecr:StartImageScan",
        "ecr:DescribeImageScanFindings"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "ElasticBeanstalkHistorialCambios"
    },
    {
      "Action": [
        "waf:*",
        "waf-regional:*",
        "wafv2:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:waf:*:997630210818:*",
        "arn:aws:wafv2:*:997630210818:*",
        "arn:aws:waf:*:995993274762:*",
        "arn:aws:wafv2:*:995993274762:*",
        "arn:aws:waf:*:669743570680:*",
        "arn:aws:wafv2:*:669743570680:*",
        "arn:aws:waf:*:974681114258:*",
        "arn:aws:wafv2:*:974681114258:*",
        "arn:aws:waf:*:999251388412:*",
        "arn:aws:wafv2:*:999251388412:*"
      ]
    },
    {
      "Action": [
        "ec2:DescribeVpcEndpoints",
        "ec2:DescribeVpcs",
        "ec2:DescribeSubnets",
        "ec2:DescribeRouteTables"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowVpcDescribe"
    },
    {
      "Action": "ec2:CreateVpcEndpoint",
      "Condition": {
        "StringEquals": {
          "aws:RequestedRegion": "eu-west-1"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowCreateVpcEndpoint"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWSReservedSSO_DeveloperAdmin_04801c8a3c32f480"
}

resource "aws_iam_role_policy" "tfer--AWSReservedSSO_Gestion_Nice_417cb1d3d1b4b2e3_AwsSSOInlinePolicy" {
  name = "AwsSSOInlinePolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:ListAllMyBuckets",
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:ListBucket",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::grabaciones-nice-konecta",
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObjectAcl",
        "s3:GetObject",
        "s3:DeleteObjectVersion",
        "s3:DeleteObject",
        "s3:PutObjectAcl",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::grabaciones-nice-konecta/*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "AWSReservedSSO_Gestion_Nice_417cb1d3d1b4b2e3"
}

resource "aws_iam_role_policy" "tfer--StackSet-StackSet-BackupV-EbsEncryptionByDefaultLa-MZILSNI5K6Y2_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:DisableEbsEncryptionByDefault",
        "ec2:EnableEbsEncryptionByDefault",
        "ec2:GetEbsDefaultKmsKeyId",
        "ec2:GetEbsEncryptionByDefault",
        "ec2:ModifyEbsDefaultKmsKeyId",
        "ec2:ResetEbsDefaultKmsKeyId"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "StackSet-StackSet-BackupV-EbsEncryptionByDefaultLa-MZILSNI5K6Y2"
}

resource "aws_iam_role_policy" "tfer--StackSet-StackSet-BackupV-EbsEncryptionByDefaultLa-ZPB4AQKAIY6N_root" {
  name = "root"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:DisableEbsEncryptionByDefault",
        "ec2:EnableEbsEncryptionByDefault",
        "ec2:GetEbsDefaultKmsKeyId",
        "ec2:GetEbsEncryptionByDefault",
        "ec2:ModifyEbsDefaultKmsKeyId",
        "ec2:ResetEbsDefaultKmsKeyId"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "StackSet-StackSet-BackupV-EbsEncryptionByDefaultLa-ZPB4AQKAIY6N"
}

resource "aws_iam_role_policy" "tfer--StackSet-StackSetPasswordPolicy-e358cbe-LambdaRole-WSV9GOUAI8R2_iam" {
  name = "iam"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:UpdateAccountPasswordPolicy",
        "iam:DeleteAccountPasswordPolicy"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY

  role = "StackSet-StackSetPasswordPolicy-e358cbe-LambdaRole-WSV9GOUAI8R2"
}

resource "aws_iam_role_policy" "tfer--StackSet-StackSetPasswordPolicy-e358cbe-LambdaRole-WSV9GOUAI8R2_lambda" {
  name = "lambda"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-west-1:335339962974:log-group:/aws/lambda/StackSet-StackSetPasswordPolicy-e-LambdaFunctionV2-NAOzU9UNuWCd:*"
    }
  ]
}
POLICY

  role = "StackSet-StackSetPasswordPolicy-e358cbe-LambdaRole-WSV9GOUAI8R2"
}

resource "aws_iam_role_policy" "tfer--aws-controltower-ForwardSnsNotificationRole_sns" {
  name = "sns"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sns:publish"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:sns:*:603321434203:aws-controltower-AggregateSecurityNotifications"
    }
  ]
}
POLICY

  role = "aws-controltower-ForwardSnsNotificationRole"
}
