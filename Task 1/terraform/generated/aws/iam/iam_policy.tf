resource "aws_iam_policy" "tfer--CloudHealth-CF-Policy-RO-shoprite" {
  description = "CloudHealth Billing and Reporting"
  name        = "CloudHealth-CF-Policy-RO-shoprite"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "autoscaling:Describe*",
        "cloudformation:ListStacks",
        "cloudformation:ListStackResources",
        "cloudformation:DescribeStacks",
        "cloudformation:DescribeStackEvents",
        "cloudformation:DescribeStackResources",
        "cloudformation:GetTemplate",
        "cloudfront:Get*",
        "cloudfront:List*",
        "cloudtrail:DescribeTrails",
        "cloudtrail:GetEventSelectors",
        "cloudtrail:ListTags",
        "cloudwatch:Describe*",
        "cloudwatch:Get*",
        "cloudwatch:List*",
        "config:Get*",
        "config:Describe*",
        "config:Deliver*",
        "config:List*",
        "cur:Describe*",
        "dms:Describe*",
        "dms:List*",
        "dynamodb:DescribeTable",
        "dynamodb:List*",
        "ec2:Describe*",
        "ec2:GetReservedInstancesExchangeQuote",
        "ecs:List*",
        "ecs:Describe*",
        "elasticache:Describe*",
        "elasticache:ListTagsForResource",
        "elasticbeanstalk:Check*",
        "elasticbeanstalk:Describe*",
        "elasticbeanstalk:List*",
        "elasticbeanstalk:RequestEnvironmentInfo",
        "elasticbeanstalk:RetrieveEnvironmentInfo",
        "elasticfilesystem:Describe*",
        "elasticloadbalancing:Describe*",
        "elasticmapreduce:Describe*",
        "elasticmapreduce:List*",
        "es:List*",
        "es:Describe*",
        "firehose:ListDeliveryStreams",
        "firehose:DescribeDeliveryStream",
        "firehose:ListTagsForDeliveryStream",
        "iam:List*",
        "iam:Get*",
        "iam:GenerateCredentialReport",
        "kinesis:Describe*",
        "kinesis:List*",
        "kms:DescribeKey",
        "kms:GetKeyRotationStatus",
        "kms:ListKeys",
        "kms:ListResourceTags",
        "lambda:List*",
        "logs:Describe*",
        "logs:ListTagsLogGroup",
        "organizations:ListAccounts",
        "organizations:ListTagsForResource",
        "organizations:DescribeOrganization",
        "redshift:Describe*",
        "route53:Get*",
        "route53:List*",
        "rds:Describe*",
        "rds:ListTagsForResource",
        "s3:GetBucketAcl",
        "s3:GetBucketLocation",
        "s3:GetBucketLogging",
        "s3:GetBucketPolicyStatus",
        "s3:GetBucketPublicAccessBlock",
        "s3:GetAccountPublicAccessBlock",
        "s3:GetBucketTagging",
        "s3:GetBucketVersioning",
        "s3:GetBucketWebsite",
        "s3:List*",
        "sagemaker:Describe*",
        "sagemaker:List*",
        "savingsplans:DescribeSavingsPlans",
        "sdb:GetAttributes",
        "sdb:List*",
        "ses:Get*",
        "ses:List*",
        "sns:Get*",
        "sns:List*",
        "sqs:GetQueueAttributes",
        "sqs:ListQueues",
        "storagegateway:List*",
        "storagegateway:Describe*",
        "workspaces:Describe*",
        "eks:Describe*",
        "eks:List*",
        "fsx:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Policy-S3-Grabaciones-Nice" {
  description = "Policy-S3-Grabaciones-Nice"
  name        = "Policy-S3-Grabaciones-Nice"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListBucket",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::grabaciones-nice-konecta"
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
      "Resource": "arn:aws:s3:::grabaciones-nice-konecta/GRABACIONES/*"
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
      "Resource": "arn:aws:s3:::grabaciones-nice-konecta/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  tags = {
    name = "Grabaciones Nice"
  }

  tags_all = {
    name = "Grabaciones Nice"
  }
}

resource "aws_iam_policy" "tfer--Policy-iam-api-mfa-APIGateway" {
  name = "Policy-iam-api-mfa-APIGateway"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "apigateway:*"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:apigateway:*::/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Policy-iam-api-mfa-ElasticBeanstalk" {
  name = "Policy-iam-api-mfa-ElasticBeanstalk"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "elasticbeanstalk:*"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "ElasticBeanstalkPermissions"
    },
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": [
            "elasticbeanstalk.amazonaws.com",
            "ec2.amazonaws.com",
            "ec2.amazonaws.com.cn",
            "autoscaling.amazonaws.com",
            "elasticloadbalancing.amazonaws.com",
            "ecs.amazonaws.com",
            "cloudformation.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:role/*",
      "Sid": "AllowPassRoleToElasticBeanstalkAndDownstreamServices"
    },
    {
      "Action": [
        "autoscaling:DescribeAccountLimits",
        "autoscaling:DescribeAutoScalingGroups",
        "autoscaling:DescribeAutoScalingInstances",
        "autoscaling:DescribeLaunchConfigurations",
        "autoscaling:DescribeLoadBalancers",
        "autoscaling:DescribeNotificationConfigurations",
        "autoscaling:DescribeScalingActivities",
        "autoscaling:DescribeScheduledActions",
        "ec2:DescribeAccountAttributes",
        "ec2:DescribeAddresses",
        "ec2:DescribeAvailabilityZones",
        "ec2:DescribeImages",
        "ec2:DescribeInstanceAttribute",
        "ec2:DescribeInstances",
        "ec2:DescribeKeyPairs",
        "ec2:DescribeLaunchTemplates",
        "ec2:DescribeLaunchTemplateVersions",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSnapshots",
        "ec2:DescribeSpotInstanceRequests",
        "ec2:DescribeSubnets",
        "ec2:DescribeVpcClassicLink",
        "ec2:DescribeVpcs",
        "elasticloadbalancing:DescribeInstanceHealth",
        "elasticloadbalancing:DescribeLoadBalancers",
        "elasticloadbalancing:DescribeTargetGroups",
        "elasticloadbalancing:DescribeTargetHealth",
        "logs:DescribeLogGroups",
        "rds:DescribeDBEngineVersions",
        "rds:DescribeDBInstances",
        "rds:DescribeOrderableDBInstanceOptions",
        "sns:ListSubscriptionsByTopic"
      ],
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "ReadOnlyPermissions"
    },
    {
      "Action": [
        "ec2:AllocateAddress",
        "ec2:AssociateAddress",
        "ec2:AuthorizeSecurityGroupEgress",
        "ec2:AuthorizeSecurityGroupIngress",
        "ec2:CreateLaunchTemplate",
        "ec2:CreateLaunchTemplateVersion",
        "ec2:CreateSecurityGroup",
        "ec2:DeleteLaunchTemplate",
        "ec2:DeleteLaunchTemplateVersions",
        "ec2:DeleteSecurityGroup",
        "ec2:DisassociateAddress",
        "ec2:ReleaseAddress",
        "ec2:RevokeSecurityGroupEgress",
        "ec2:RevokeSecurityGroupIngress"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "EC2BroadOperationPermissions"
    },
    {
      "Action": "ec2:RunInstances",
      "Condition": {
        "ArnLike": {
          "ec2:LaunchTemplate": "arn:aws:ec2:*:*:launch-template/*"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "EC2RunInstancesOperationPermissions"
    },
    {
      "Action": [
        "ec2:TerminateInstances"
      ],
      "Condition": {
        "StringLike": {
          "ec2:ResourceTag/aws:cloudformation:stack-id": [
            "arn:aws:cloudformation:*:*:stack/awseb-e-*",
            "arn:aws:cloudformation:*:*:stack/eb-*"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:*:*:instance/*",
      "Sid": "EC2TerminateInstancesOperationPermissions"
    },
    {
      "Action": [
        "ecs:CreateCluster",
        "ecs:DescribeClusters",
        "ecs:RegisterTaskDefinition"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "ECSBroadOperationPermissions"
    },
    {
      "Action": "ecs:DeleteCluster",
      "Effect": "Allow",
      "Resource": "arn:aws:ecs:*:*:cluster/awseb-*",
      "Sid": "ECSDeleteClusterOperationPermissions"
    },
    {
      "Action": [
        "autoscaling:AttachInstances",
        "autoscaling:CreateAutoScalingGroup",
        "autoscaling:CreateLaunchConfiguration",
        "autoscaling:DeleteLaunchConfiguration",
        "autoscaling:DeleteAutoScalingGroup",
        "autoscaling:DeleteScheduledAction",
        "autoscaling:DetachInstances",
        "autoscaling:DeletePolicy",
        "autoscaling:PutScalingPolicy",
        "autoscaling:PutScheduledUpdateGroupAction",
        "autoscaling:PutNotificationConfiguration",
        "autoscaling:ResumeProcesses",
        "autoscaling:SetDesiredCapacity",
        "autoscaling:SuspendProcesses",
        "autoscaling:TerminateInstanceInAutoScalingGroup",
        "autoscaling:UpdateAutoScalingGroup"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:autoscaling:*:*:launchConfiguration:*:launchConfigurationName/awseb-e-*",
        "arn:aws:autoscaling:*:*:launchConfiguration:*:launchConfigurationName/eb-*",
        "arn:aws:autoscaling:*:*:autoScalingGroup:*:autoScalingGroupName/awseb-e-*",
        "arn:aws:autoscaling:*:*:autoScalingGroup:*:autoScalingGroupName/eb-*"
      ],
      "Sid": "ASGOperationPermissions"
    },
    {
      "Action": [
        "cloudformation:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:cloudformation:*:*:stack/awseb-*",
        "arn:aws:cloudformation:*:*:stack/eb-*"
      ],
      "Sid": "CFNOperationPermissions"
    },
    {
      "Action": [
        "elasticloadbalancing:ApplySecurityGroupsToLoadBalancer",
        "elasticloadbalancing:ConfigureHealthCheck",
        "elasticloadbalancing:CreateLoadBalancer",
        "elasticloadbalancing:DeleteLoadBalancer",
        "elasticloadbalancing:DeregisterInstancesFromLoadBalancer",
        "elasticloadbalancing:DeregisterTargets",
        "elasticloadbalancing:RegisterInstancesWithLoadBalancer",
        "elasticloadbalancing:RegisterTargets"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:elasticloadbalancing:*:*:targetgroup/awseb-*",
        "arn:aws:elasticloadbalancing:*:*:targetgroup/eb-*",
        "arn:aws:elasticloadbalancing:*:*:loadbalancer/awseb-*",
        "arn:aws:elasticloadbalancing:*:*:loadbalancer/eb-*",
        "arn:aws:elasticloadbalancing:*:*:loadbalancer/*/awseb-*/*",
        "arn:aws:elasticloadbalancing:*:*:loadbalancer/*/eb-*/*"
      ],
      "Sid": "ELBOperationPermissions"
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:DeleteLogGroup",
        "logs:PutRetentionPolicy"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:*:*:log-group:/aws/elasticbeanstalk/*",
      "Sid": "CWLogsOperationPermissions"
    },
    {
      "Action": [
        "s3:DeleteObject",
        "s3:GetObject",
        "s3:GetObjectAcl",
        "s3:GetObjectVersion",
        "s3:GetObjectVersionAcl",
        "s3:PutObject",
        "s3:PutObjectAcl",
        "s3:PutObjectVersionAcl"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::elasticbeanstalk-*/*",
      "Sid": "S3ObjectOperationPermissions"
    },
    {
      "Action": [
        "s3:GetBucketLocation",
        "s3:GetBucketPolicy",
        "s3:ListBucket",
        "s3:PutBucketPolicy"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::elasticbeanstalk-*",
      "Sid": "S3BucketOperationPermissions"
    },
    {
      "Action": [
        "sns:CreateTopic",
        "sns:GetTopicAttributes",
        "sns:SetTopicAttributes",
        "sns:Subscribe"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:sns:*:*:ElasticBeanstalkNotifications-*",
      "Sid": "SNSOperationPermissions"
    },
    {
      "Action": [
        "sqs:GetQueueAttributes",
        "sqs:GetQueueUrl"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sqs:*:*:awseb-e-*",
        "arn:aws:sqs:*:*:eb-*"
      ],
      "Sid": "SQSOperationPermissions"
    },
    {
      "Action": [
        "cloudwatch:PutMetricAlarm"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:cloudwatch:*:*:alarm:awseb-*",
        "arn:aws:cloudwatch:*:*:alarm:eb-*"
      ],
      "Sid": "CWPutMetricAlarmOperationPermissions"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Policy-iam-api-mfa-RDS" {
  name = "Policy-iam-api-mfa-RDS"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue",
        "secretsmanager:PutResourcePolicy",
        "secretsmanager:PutSecretValue",
        "secretsmanager:DeleteSecret",
        "secretsmanager:DescribeSecret",
        "secretsmanager:TagResource"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:secretsmanager:*:*:secret:rds-db-credentials/*",
      "Sid": "SecretsManagerDbCredentialsAccess"
    },
    {
      "Action": [
        "dbqms:CreateFavoriteQuery",
        "dbqms:DescribeFavoriteQueries",
        "dbqms:UpdateFavoriteQuery",
        "dbqms:DeleteFavoriteQueries",
        "dbqms:GetQueryString",
        "dbqms:CreateQueryHistory",
        "dbqms:DescribeQueryHistory",
        "dbqms:UpdateQueryHistory",
        "dbqms:DeleteQueryHistory",
        "rds-data:ExecuteSql",
        "rds-data:ExecuteStatement",
        "rds-data:BatchExecuteStatement",
        "rds-data:BeginTransaction",
        "rds-data:CommitTransaction",
        "rds-data:RollbackTransaction",
        "secretsmanager:CreateSecret",
        "secretsmanager:ListSecrets",
        "secretsmanager:GetRandomPassword",
        "tag:GetResources"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "RDSDataServiceAccess"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Policy-iam-api-mfa-cloudformation" {
  name = "Policy-iam-api-mfa-cloudformation"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudformation:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Policy-iam-api-mfa-cloudwatch" {
  name = "Policy-iam-api-mfa-cloudwatch"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "events:*",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "CloudWatchEventsFullAccess"
    },
    {
      "Action": "iam:PassRole",
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:role/AWS_Events_Invoke_Targets",
      "Sid": "IAMPassRoleForCloudWatchEvents"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Policy-iam-api-mfa-dinamoDB" {
  name = "Policy-iam-api-mfa-dinamoDB"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:*",
        "dax:*",
        "application-autoscaling:DeleteScalingPolicy",
        "application-autoscaling:DeregisterScalableTarget",
        "application-autoscaling:DescribeScalableTargets",
        "application-autoscaling:DescribeScalingActivities",
        "application-autoscaling:DescribeScalingPolicies",
        "application-autoscaling:PutScalingPolicy",
        "application-autoscaling:RegisterScalableTarget",
        "cloudwatch:DeleteAlarms",
        "cloudwatch:DescribeAlarmHistory",
        "cloudwatch:DescribeAlarms",
        "cloudwatch:DescribeAlarmsForMetric",
        "cloudwatch:GetMetricStatistics",
        "cloudwatch:ListMetrics",
        "cloudwatch:PutMetricAlarm",
        "cloudwatch:GetMetricData",
        "datapipeline:ActivatePipeline",
        "datapipeline:CreatePipeline",
        "datapipeline:DeletePipeline",
        "datapipeline:DescribeObjects",
        "datapipeline:DescribePipelines",
        "datapipeline:GetPipelineDefinition",
        "datapipeline:ListPipelines",
        "datapipeline:PutPipelineDefinition",
        "datapipeline:QueryObjects",
        "ec2:DescribeVpcs",
        "ec2:DescribeSubnets",
        "ec2:DescribeSecurityGroups",
        "iam:GetRole",
        "iam:ListRoles",
        "kms:DescribeKey",
        "kms:ListAliases",
        "sns:CreateTopic",
        "sns:DeleteTopic",
        "sns:ListSubscriptions",
        "sns:ListSubscriptionsByTopic",
        "sns:ListTopics",
        "sns:Subscribe",
        "sns:Unsubscribe",
        "sns:SetTopicAttributes",
        "lambda:CreateFunction",
        "lambda:ListFunctions",
        "lambda:ListEventSourceMappings",
        "lambda:CreateEventSourceMapping",
        "lambda:DeleteEventSourceMapping",
        "lambda:GetFunctionConfiguration",
        "lambda:DeleteFunction",
        "resource-groups:ListGroups",
        "resource-groups:ListGroupResources",
        "resource-groups:GetGroup",
        "resource-groups:GetGroupQuery",
        "resource-groups:DeleteGroup",
        "resource-groups:CreateGroup",
        "tag:GetResources",
        "kinesis:ListStreams",
        "kinesis:DescribeStream",
        "kinesis:DescribeStreamSummary"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "cloudwatch:GetInsightRuleReport",
      "Effect": "Allow",
      "Resource": "arn:aws:cloudwatch:*:*:insight-rule/DynamoDBContributorInsights*"
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Condition": {
        "StringLike": {
          "iam:PassedToService": [
            "application-autoscaling.amazonaws.com",
            "application-autoscaling.amazonaws.com.cn",
            "dax.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "iam:CreateServiceLinkedRole"
      ],
      "Condition": {
        "StringEquals": {
          "iam:AWSServiceName": [
            "replication.dynamodb.amazonaws.com",
            "dax.amazonaws.com",
            "dynamodb.application-autoscaling.amazonaws.com",
            "contributorinsights.dynamodb.amazonaws.com",
            "kinesisreplication.dynamodb.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Policy-iam-api-mfa-lambda" {
  name = "Policy-iam-api-mfa-lambda"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudformation:DescribeStacks",
        "cloudformation:ListStackResources",
        "cloudwatch:ListMetrics",
        "cloudwatch:GetMetricData",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSubnets",
        "ec2:DescribeVpcs",
        "kms:ListAliases",
        "iam:GetPolicy",
        "iam:GetPolicyVersion",
        "iam:GetRole",
        "iam:GetRolePolicy",
        "iam:ListAttachedRolePolicies",
        "iam:ListRolePolicies",
        "iam:ListRoles",
        "lambda:*",
        "logs:DescribeLogGroups",
        "states:DescribeStateMachine",
        "states:ListStateMachines",
        "tag:GetResources",
        "xray:GetTraceSummaries",
        "xray:BatchGetTraces"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringEquals": {
          "iam:PassedToService": "lambda.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "logs:DescribeLogStreams",
        "logs:GetLogEvents",
        "logs:FilterLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:*:*:log-group:/aws/lambda/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Policy-iam-api-mfa-s3" {
  name = "Policy-iam-api-mfa-s3"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:*",
        "s3-object-lambda:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Policy-iam-mfa-Required" {
  name = "Policy-iam-mfa-Required"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:GetAccountPasswordPolicy",
        "iam:ListVirtualMFADevices",
        "iam:ListUsers",
        "iam:ListMFADevices"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowViewAccountInfo"
    },
    {
      "Action": [
        "iam:ChangePassword",
        "iam:GetUser"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnPasswords"
    },
    {
      "Action": [
        "iam:CreateAccessKey",
        "iam:DeleteAccessKey",
        "iam:ListAccessKeys",
        "iam:UpdateAccessKey"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnAccessKeys"
    },
    {
      "Action": [
        "iam:DeleteSigningCertificate",
        "iam:ListSigningCertificates",
        "iam:UpdateSigningCertificate",
        "iam:UploadSigningCertificate"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnSigningCertificates"
    },
    {
      "Action": [
        "iam:DeleteSSHPublicKey",
        "iam:GetSSHPublicKey",
        "iam:ListSSHPublicKeys",
        "iam:UpdateSSHPublicKey",
        "iam:UploadSSHPublicKey"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnSSHPublicKeys"
    },
    {
      "Action": [
        "iam:CreateServiceSpecificCredential",
        "iam:DeleteServiceSpecificCredential",
        "iam:ListServiceSpecificCredentials",
        "iam:ResetServiceSpecificCredential",
        "iam:UpdateServiceSpecificCredential"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnGitCredentials"
    },
    {
      "Action": [
        "iam:CreateVirtualMFADevice",
        "iam:DeleteVirtualMFADevice"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:mfa/$${aws:username}",
      "Sid": "AllowManageOwnVirtualMFADevice"
    },
    {
      "Action": [
        "iam:DeactivateMFADevice",
        "iam:EnableMFADevice",
        "iam:ListMFADevices",
        "iam:ResyncMFADevice"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnUserMFA"
    },
    {
      "Condition": {
        "BoolIfExists": {
          "aws:MultiFactorAuthPresent": "false"
        }
      },
      "Effect": "Deny",
      "NotAction": [
        "iam:CreateVirtualMFADevice",
        "iam:EnableMFADevice",
        "iam:GetUser",
        "iam:ListMFADevices",
        "iam:ListVirtualMFADevices",
        "iam:ResyncMFADevice",
        "sts:GetSessionToken"
      ],
      "Resource": "*",
      "Sid": "DenyAllExceptListedIfNoMFA"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Policy-iam-mfa-managed" {
  name = "Policy-iam-mfa-managed"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "iam:GetAccountPasswordPolicy",
        "iam:ListVirtualMFADevices",
        "iam:ListUsers",
        "iam:ListMFADevices"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "AllowViewAccountInfo"
    },
    {
      "Action": [
        "iam:ChangePassword",
        "iam:GetUser"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnPasswords"
    },
    {
      "Action": [
        "iam:CreateAccessKey",
        "iam:DeleteAccessKey",
        "iam:ListAccessKeys",
        "iam:UpdateAccessKey"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnAccessKeys"
    },
    {
      "Action": [
        "iam:DeleteSigningCertificate",
        "iam:ListSigningCertificates",
        "iam:UpdateSigningCertificate",
        "iam:UploadSigningCertificate"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnSigningCertificates"
    },
    {
      "Action": [
        "iam:DeleteSSHPublicKey",
        "iam:GetSSHPublicKey",
        "iam:ListSSHPublicKeys",
        "iam:UpdateSSHPublicKey",
        "iam:UploadSSHPublicKey"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnSSHPublicKeys"
    },
    {
      "Action": [
        "iam:CreateServiceSpecificCredential",
        "iam:DeleteServiceSpecificCredential",
        "iam:ListServiceSpecificCredentials",
        "iam:ResetServiceSpecificCredential",
        "iam:UpdateServiceSpecificCredential"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnGitCredentials"
    },
    {
      "Action": [
        "iam:CreateVirtualMFADevice",
        "iam:DeleteVirtualMFADevice"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:mfa/$${aws:username}",
      "Sid": "AllowManageOwnVirtualMFADevice"
    },
    {
      "Action": [
        "iam:DeactivateMFADevice",
        "iam:EnableMFADevice",
        "iam:ListMFADevices",
        "iam:ResyncMFADevice"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::*:user/$${aws:username}",
      "Sid": "AllowManageOwnUserMFA"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--prisma_cloud_1-1169731755537611776-PrismaCloudRole-member" {
  name = "prisma_cloud_1-1169731755537611776-PrismaCloudRole-member"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:GetLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudFlowlogs1"
    },
    {
      "Action": [
        "kms:ListKeys"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudPCCAgentlessKMSListKeys10"
    },
    {
      "Action": [
        "cloudtrail:LookupEvents"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudAuditEventsCloudTrail1"
    },
    {
      "Action": [
        "account:GetRegionOptStatus"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudPCCAgentlessRegion9"
    },
    {
      "Action": [
        "ssm:GetParameter",
        "ssm:GetParameters"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudPCCAgentlessSSM15"
    },
    {
      "Action": [
        "sts:DecodeAuthorizationMessage",
        "sts:GetCallerIdentity"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudPCCAgentlessSTS5"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::elasticbeanstalk-*/*",
      "Sid": "PrismaCloudElasticBeanstalk6"
    },
    {
      "Action": [
        "guardduty:GetDetector",
        "guardduty:GetFindings",
        "guardduty:ListDetectors",
        "guardduty:ListFindings"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudGuardduty1"
    },
    {
      "Action": [
        "kms:CreateKey"
      ],
      "Condition": {
        "StringEquals": {
          "aws:RequestTag/created-by": "prismacloud-agentless-scan"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudPCCAgentlessKMSCreateKey7"
    },
    {
      "Action": [
        "ec2:CreateInternetGateway",
        "ec2:CreateSubnet",
        "ec2:CreateVpc"
      ],
      "Condition": {
        "StringEquals": {
          "aws:RequestTag/created-by": "prismacloud-agentless-scan"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudPCCAgentlessNetworkActions6"
    },
    {
      "Action": [
        "kms:TagResource"
      ],
      "Condition": {
        "StringEquals": {
          "aws:RequestTag/created-by": "prismacloud-agentless-scan"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:kms:*:*:key/*",
      "Sid": "PrismaCloudPCCAgentlessKMSTagResource17"
    },
    {
      "Action": [
        "ec2:CopySnapshot"
      ],
      "Condition": {
        "StringEquals": {
          "aws:RequestTag/created-by": "prismacloud-agentless-scan"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ec2:*::snapshot/*"
      ],
      "Sid": "PrismaCloudPrismaCloudPCCAgentlessCopySnapshots8"
    },
    {
      "Action": [
        "ec2:CreateRoute",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeInstanceTypes",
        "ec2:DescribeInternetGateways",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DescribeRouteTables",
        "ec2:DescribeVpcs"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudComputeAgentless1"
    },
    {
      "Action": [
        "kms:CreateGrant"
      ],
      "Condition": {
        "Bool": {
          "kms:GrantIsForAWSResource": "true"
        },
        "StringLike": {
          "kms:EncryptionContext:aws:ebs:id": "*"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:kms:*:*:key/*",
      "Sid": "PrismaCloudPCCAgentlessKMSCreateGrant12"
    },
    {
      "Action": [
        "iam:CreateServiceLinkedRole"
      ],
      "Condition": {
        "StringLike": {
          "iam:AWSServiceName": "spot.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::*:role/aws-service-role/spot.amazonaws.com/*"
      ],
      "Sid": "PrismaCloudPCCAgentlessServiceLinkedRole14"
    },
    {
      "Action": [
        "kms:Decrypt",
        "kms:GenerateDataKeyWithoutPlaintext",
        "kms:ReEncryptFrom",
        "kms:ReEncryptTo"
      ],
      "Condition": {
        "StringLike": {
          "kms:ViaService": "ec2.*.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:kms:*:*:key/*",
      "Sid": "PrismaCloudPCCAgentlessKMS4"
    },
    {
      "Action": [
        "ec2:CreateSnapshot",
        "ec2:CreateSnapshots",
        "ec2:DescribeInstanceStatus",
        "ec2:DescribeInstances",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSnapshots",
        "ec2:DescribeSubnets",
        "ec2:DescribeVolumes",
        "iam:SimulatePrincipalPolicy"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudPCCAgentlessRW2"
    },
    {
      "Action": [
        "cloudtrail:DescribeTrails",
        "cloudtrail:GetEventSelectors",
        "cloudtrail:GetTrailStatus",
        "ec2:DescribeRegions",
        "events:DescribeApiDestination",
        "events:DescribeConnection",
        "events:DescribeRule",
        "events:ListTargetsByRule"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudEBRuleStatusPermissions2"
    },
    {
      "Action": [
        "ec2:RunInstances"
      ],
      "Condition": {
        "StringEquals": {
          "aws:RequestTag/created-by": "prismacloud-agentless-scan"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ec2:*:*:volume/*",
        "arn:aws:ec2:*:*:instance/*"
      ],
      "Sid": "PrismaCloudPCCAgentlessRunInstanceCondition13"
    },
    {
      "Action": [
        "inspector:DescribeAssessmentTemplates",
        "inspector:DescribeFindings",
        "inspector:DescribeRulesPackages",
        "inspector:ListAssessmentRunAgents",
        "inspector:ListAssessmentRuns",
        "inspector:ListAssessmentTemplates",
        "inspector:ListFindings",
        "inspector:ListRulesPackages"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudInspector1"
    },
    {
      "Action": [
        "events:DeleteRule",
        "events:DisableRule",
        "events:EnableRule",
        "events:PutRule",
        "events:RemoveTargets"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:events:*:335339962974:rule/prisma-cloud-eb-o-1169731755537611776-*"
      ],
      "Sid": "PrismaCloudEBRuleManagementPermissions1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--prisma_cloud_2-1169731755537611776-PrismaCloudRole-member" {
  name = "prisma_cloud_2-1169731755537611776-PrismaCloudRole-member"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:AttachInternetGateway",
        "ec2:CreateSubnet",
        "ec2:DeleteInternetGateway",
        "ec2:DeleteSnapshot",
        "ec2:DeleteSubnet",
        "ec2:DeleteVpc",
        "ec2:DetachInternetGateway",
        "ec2:ModifySnapshotAttribute",
        "ec2:TerminateInstances"
      ],
      "Condition": {
        "StringEquals": {
          "ec2:ResourceTag/created-by": "prismacloud-agentless-scan"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudPCCAgentlessRM11"
    },
    {
      "Action": [
        "ec2:DescribeImages",
        "iam:GetPolicy",
        "iam:GetPolicyVersion",
        "iam:GetRole",
        "iam:GetRolePolicy",
        "iam:ListAttachedRolePolicies",
        "iam:ListRolePolicies",
        "iam:SimulatePrincipalPolicy",
        "kms:Decrypt",
        "lambda:GetFunction",
        "lambda:GetFunctionConfiguration",
        "lambda:GetLayerVersion",
        "lambda:ListFunctions",
        "lambda:ListLayerVersions",
        "lambda:ListLayers"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudComputeServerlessScan1"
    },
    {
      "Action": [
        "ec2:RunInstances"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ec2:*::image/*",
        "arn:aws:ec2:*::snapshot/*",
        "arn:aws:ec2:*:*:subnet/*",
        "arn:aws:ec2:*:*:network-interface/*",
        "arn:aws:ec2:*:*:security-group/*",
        "arn:aws:ec2:*:*:key-pair/*"
      ],
      "Sid": "PrismaCloudPCCAgentlessRunInstanceResources3"
    },
    {
      "Action": [
        "cloudformation:DescribeStackResources",
        "cloudformation:GetTemplate",
        "cloudformation:ListStacks",
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchGetImage",
        "ecr:BatchGetRepositoryScanningConfiguration",
        "ecr:DescribeImageReplicationStatus",
        "ecr:DescribeImageScanFindings",
        "ecr:DescribePullThroughCacheRules",
        "ecr:DescribeRegistry",
        "ecr:GetAuthorizationToken",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRegistryPolicy",
        "ecr:ListImages",
        "lambda:GetEventSourceMapping",
        "lambda:GetFunction",
        "lambda:GetLayerVersion",
        "s3:ListBucket",
        "sns:GetSubscriptionAttributes"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudBridgecrew1"
    },
    {
      "Action": [
        "ec2:CreateTags"
      ],
      "Condition": {
        "StringEquals": {
          "aws:RequestTag/created-by": "prismacloud-agentless-scan"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ec2:*::snapshot/*",
        "arn:aws:ec2:*:*:instance/*",
        "arn:aws:ec2:*:*:vpc/*",
        "arn:aws:ec2:*:*:subnet/*",
        "arn:aws:ec2:*:*:internet-gateway/*",
        "arn:aws:ec2:*:*:volume/*",
        "arn:aws:ec2:*:*:security-group/*"
      ],
      "Sid": "PrismaCloudPCCAgentlessTags16"
    },
    {
      "Action": [
        "ec2:AuthorizeSecurityGroupEgress",
        "ec2:AuthorizeSecurityGroupIngress",
        "ec2:CreateSecurityGroup",
        "ec2:CreateTags",
        "ec2:DeleteSecurityGroup",
        "ec2:DescribeImages",
        "ec2:DescribeInstanceTypeOfferings",
        "ec2:DescribeInstances",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSubnets",
        "ec2:DescribeVpcs",
        "ec2:RevokeSecurityGroupEgress",
        "ec2:RunInstances",
        "ec2:TerminateInstances",
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchGetImage",
        "ecr:DescribeImageScanFindings",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetAuthorizationToken",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:ListImages",
        "ecr:ListTagsForResource",
        "iam:GetPolicy",
        "iam:GetPolicyVersion",
        "iam:GetRole",
        "iam:GetRolePolicy",
        "iam:ListAttachedRolePolicies",
        "iam:ListRolePolicies",
        "kms:CreateGrant",
        "kms:Decrypt",
        "kms:Encrypt",
        "lambda:DeleteLayerVersion",
        "lambda:GetFunctionConfiguration",
        "lambda:GetLayerVersion",
        "lambda:ListFunctions",
        "lambda:ListLayers",
        "lambda:PublishLayerVersion",
        "lambda:UpdateFunctionConfiguration",
        "logs:GetQueryResults",
        "logs:StartQuery",
        "securityhub:BatchImportFindings",
        "ssm:CancelCommand",
        "ssm:CreateAssociation",
        "ssm:DescribeInstanceInformation",
        "ssm:ListCommandInvocations",
        "ssm:SendCommand"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudComputeAutoProtect1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--prisma_cloud_3-1169731755537611776-PrismaCloudRole-member" {
  name = "prisma_cloud_3-1169731755537611776-PrismaCloudRole-member"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sagemaker:ListCodeRepositories",
        "sagemaker:ListDomains",
        "sagemaker:ListEndpointConfigs",
        "sagemaker:ListEndpoints",
        "sagemaker:ListLabelingJobs",
        "sagemaker:ListModels",
        "sagemaker:ListNotebookInstanceLifecycleConfigs",
        "sagemaker:ListNotebookInstances",
        "sagemaker:ListProcessingJobs",
        "sagemaker:ListStudioLifecycleConfigs",
        "sagemaker:ListTags",
        "sagemaker:ListTrainingJobs",
        "sagemaker:ListUserProfiles",
        "scheduler:GetSchedule",
        "scheduler:ListSchedules",
        "secretsmanager:DescribeSecret",
        "secretsmanager:GetResourcePolicy",
        "secretsmanager:ListSecrets",
        "securityhub:DescribeHub",
        "securityhub:DescribeStandards",
        "securityhub:GetEnabledStandards",
        "securityhub:ListEnabledProductsForImport",
        "serverlessrepo:GetApplicationPolicy",
        "serverlessrepo:ListApplications",
        "servicecatalog:DescribePortfolioShares",
        "servicecatalog:ListApplications",
        "servicecatalog:ListAttributeGroups",
        "servicecatalog:ListPortfolios",
        "servicecatalog:ListPrincipalsForPortfolio",
        "servicecatalog:SearchProducts",
        "servicecatalog:SearchProductsAsAdmin",
        "servicediscovery:ListNamespaces",
        "ses:DescribeConfigurationSet",
        "ses:DescribeReceiptRuleSet",
        "ses:GetIdentityDkimAttributes",
        "ses:GetIdentityPolicies",
        "ses:GetIdentityVerificationAttributes",
        "ses:GetTemplate",
        "ses:ListConfigurationSets",
        "ses:ListIdentities",
        "ses:ListIdentityPolicies",
        "ses:ListReceiptRuleSets",
        "ses:ListTemplates",
        "shield:DescribeDRTAccess",
        "shield:GetSubscriptionState",
        "shield:ListProtectionGroups",
        "shield:ListProtections",
        "shield:ListResourcesInProtectionGroup",
        "shield:ListTagsForResource",
        "signer:DescribeSigningJob",
        "signer:ListSigningJobs",
        "sns:GetDataProtectionPolicy",
        "sns:GetTopicAttributes",
        "sns:ListPlatformApplications",
        "sns:ListSubscriptions",
        "sns:ListSubscriptionsByTopic",
        "sns:ListTagsForResource",
        "sns:ListTopics",
        "sqs:GetQueueAttributes",
        "sqs:ListMessageMoveTasks",
        "sqs:ListQueueTags",
        "sqs:ListQueues",
        "ssm:DescribeActivations",
        "ssm:DescribeAssociation",
        "ssm:DescribeDocument",
        "ssm:DescribeDocumentPermission",
        "ssm:DescribeInstanceInformation",
        "ssm:DescribeParameters",
        "ssm:DescribePatchBaselines",
        "ssm:DescribeSessions",
        "ssm:GetDocument",
        "ssm:GetInventory",
        "ssm:GetInventorySchema",
        "ssm:GetParameters",
        "ssm:GetPatchBaseline",
        "ssm:GetServiceSetting",
        "ssm:ListAssociations",
        "ssm:ListDocuments",
        "ssm:ListInventoryEntries",
        "ssm:ListResourceComplianceSummaries",
        "ssm:ListTagsForResource",
        "sso:DescribeApplication",
        "sso:DescribePermissionSet",
        "sso:DescribePermissionSetProvisioningStatus",
        "sso:ListAccountAssignments",
        "sso:ListAccountsForProvisionedPermissionSet",
        "sso:ListApplicationAssignments",
        "sso:ListApplications",
        "sso:ListInstances",
        "sso:ListPermissionSetProvisioningStatus",
        "sso:ListPermissionSets",
        "states:DescribeStateMachine",
        "states:ListActivities",
        "states:ListStateMachines",
        "states:ListTagsForResource",
        "storagegateway:DescribeCachediSCSIVolumes",
        "storagegateway:DescribeChapCredentials",
        "storagegateway:DescribeGatewayInformation",
        "storagegateway:DescribeNFSFileShares",
        "storagegateway:DescribeSMBFileShares",
        "storagegateway:DescribeSMBSettings",
        "storagegateway:DescribeTapes",
        "storagegateway:ListFileShares",
        "storagegateway:ListGateways",
        "storagegateway:ListTapes",
        "storagegateway:ListVolumes",
        "support:DescribeCases",
        "swf:ListDomains",
        "synthetics:DescribeCanaries",
        "tag:DescribeReportCreation",
        "tag:GetComplianceSummary",
        "transcribe:GetTranscriptionJob",
        "transcribe:ListLanguageModels",
        "transcribe:ListTagsForResource",
        "transcribe:ListTranscriptionJobs",
        "transfer:DescribeAccess",
        "transfer:DescribeSecurityPolicy",
        "transfer:DescribeServer",
        "transfer:DescribeUser",
        "transfer:ListAccesses",
        "transfer:ListServers",
        "transfer:ListUsers",
        "translate:DescribeTextTranslationJob",
        "translate:GetTerminology",
        "translate:ListTerminologies",
        "translate:ListTextTranslationJobs",
        "vpc-lattice:GetListener",
        "vpc-lattice:GetService",
        "vpc-lattice:GetServiceNetwork",
        "vpc-lattice:GetTargetGroup",
        "vpc-lattice:ListListeners",
        "vpc-lattice:ListServiceNetworkServiceAssociations",
        "vpc-lattice:ListServiceNetworkVpcAssociations",
        "vpc-lattice:ListServiceNetworks",
        "vpc-lattice:ListServices",
        "vpc-lattice:ListTagsForResource",
        "vpc-lattice:ListTargetGroups",
        "waf-regional:GetIPSet",
        "waf-regional:GetLoggingConfiguration",
        "waf-regional:GetWebACL",
        "waf-regional:ListIPSets",
        "waf-regional:ListResourcesForWebACL",
        "waf-regional:ListTagsForResource",
        "waf-regional:ListWebACLs",
        "waf:GetIPSet",
        "waf:GetLoggingConfiguration",
        "waf:GetWebACL",
        "waf:ListIPSets",
        "waf:ListTagsForResource",
        "waf:ListWebACLs",
        "wafv2:GetIPSet",
        "wafv2:GetLoggingConfiguration",
        "wafv2:GetRuleGroup",
        "wafv2:GetWebACL",
        "wafv2:ListIPSets",
        "wafv2:ListResourcesForWebACL",
        "wafv2:ListRuleGroups",
        "wafv2:ListTagsForResource",
        "wafv2:ListWebACLs",
        "wellarchitected:GetWorkload",
        "wellarchitected:ListWorkloads",
        "workspaces:DescribeIpGroups",
        "workspaces:DescribeTags",
        "workspaces:DescribeWorkspaceBundles",
        "workspaces:DescribeWorkspaceDirectories",
        "workspaces:DescribeWorkspaces",
        "xray:GetEncryptionConfig"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudConfig5"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--prisma_cloud_4-1169731755537611776-PrismaCloudRole-member" {
  name = "prisma_cloud_4-1169731755537611776-PrismaCloudRole-member"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "access-analyzer:GetAnalyzer",
        "access-analyzer:ListAnalyzers",
        "account:GetAlternateContact",
        "account:GetContactInformation",
        "acm-pca:GetPolicy",
        "acm-pca:ListCertificateAuthorities",
        "acm-pca:ListTags",
        "acm:DescribeCertificate",
        "acm:ListCertificates",
        "acm:ListTagsForCertificate",
        "airflow:GetEnvironment",
        "airflow:ListEnvironments",
        "amplify:ListApps",
        "aoss:BatchGetCollection",
        "aoss:ListCollections",
        "aoss:ListSecurityConfigs",
        "aoss:ListTagsForResource",
        "apigateway:GET",
        "appconfig:ListApplications",
        "appconfig:ListConfigurationProfiles",
        "appconfig:ListEnvironments",
        "appflow:DescribeFlow",
        "appflow:ListFlows",
        "application-autoscaling:DescribeScalingPolicies",
        "appmesh:DescribeMesh",
        "appmesh:DescribeVirtualGateway",
        "appmesh:ListMeshes",
        "appmesh:ListTagsForResource",
        "appmesh:ListVirtualGateways",
        "apprunner:DescribeAutoScalingConfiguration",
        "apprunner:DescribeCustomDomains",
        "apprunner:DescribeService",
        "apprunner:ListAutoScalingConfigurations",
        "apprunner:ListServices",
        "apprunner:ListTagsForResource",
        "appstream:DescribeFleets",
        "appstream:DescribeImageBuilders",
        "appstream:DescribeImages",
        "appstream:DescribeStacks",
        "appstream:DescribeUsageReportSubscriptions",
        "appstream:ListTagsForResource",
        "appsync:GetGraphqlApi",
        "appsync:ListGraphqlApis",
        "aps:DescribeLoggingConfiguration",
        "aps:ListWorkspaces",
        "athena:GetWorkGroup",
        "athena:ListDataCatalogs",
        "athena:ListDatabases",
        "athena:ListTableMetadata",
        "athena:ListWorkGroups",
        "auditmanager:GetAssessment",
        "auditmanager:GetControl",
        "auditmanager:ListAssessments",
        "auditmanager:ListControls",
        "autoscaling:DescribeAutoScalingGroups",
        "autoscaling:DescribeLaunchConfigurations",
        "backup:GetBackupPlan",
        "backup:GetBackupVaultAccessPolicy",
        "backup:ListBackupPlans",
        "backup:ListBackupVaults",
        "backup:ListProtectedResources",
        "backup:ListTags",
        "batch:DescribeComputeEnvironments",
        "batch:DescribeJobDefinitions",
        "batch:DescribeJobQueues",
        "bedrock:GetAgent",
        "bedrock:GetCustomModel",
        "bedrock:GetFoundationModel",
        "bedrock:GetKnowledgeBase",
        "bedrock:GetModelCustomizationJob",
        "bedrock:GetModelInvocationLoggingConfiguration",
        "bedrock:GetProvisionedModelThroughput",
        "bedrock:ListAgents",
        "bedrock:ListCustomModels",
        "bedrock:ListFoundationModels",
        "bedrock:ListKnowledgeBases",
        "bedrock:ListModelCustomizationJobs",
        "bedrock:ListProvisionedModelThroughputs",
        "bedrock:ListTagsForResource",
        "budgets:ViewBudget",
        "ce:GetCostAndUsage",
        "chime:GetVoiceConnectorLoggingConfiguration",
        "chime:ListVoiceConnectors",
        "cloud9:DescribeEnvironmentMemberships",
        "cloud9:DescribeEnvironments",
        "cloud9:ListEnvironments",
        "cloud9:ListTagsForResource",
        "cloudformation:DescribeStackResources",
        "cloudformation:DescribeStacks",
        "cloudformation:GetStackPolicy",
        "cloudformation:GetTemplate",
        "cloudformation:ListStackResources",
        "cloudformation:ListStacks",
        "cloudfront:GetDistribution",
        "cloudfront:GetDistributionConfig",
        "cloudfront:GetResponseHeadersPolicy",
        "cloudfront:ListDistributions",
        "cloudfront:ListDistributionsByWebACLId",
        "cloudfront:ListOriginAccessControls",
        "cloudfront:ListResponseHeadersPolicies",
        "cloudfront:ListTagsForResource",
        "cloudhsm:DescribeClusters",
        "cloudsearch:DescribeDomains",
        "cloudsearch:ListTags",
        "cloudtrail:DescribeTrails",
        "cloudtrail:GetEventSelectors",
        "cloudtrail:GetTrailStatus",
        "cloudtrail:ListTags",
        "cloudwatch:DescribeAlarms",
        "cloudwatch:DescribeInsightRules",
        "cloudwatch:ListTagsForResource",
        "codeartifact:DescribeDomain",
        "codeartifact:DescribeRepository",
        "codeartifact:GetDomainPermissionsPolicy",
        "codeartifact:GetRepositoryPermissionsPolicy",
        "codeartifact:ListDomains",
        "codeartifact:ListRepositories",
        "codeartifact:ListTagsForResource",
        "codebuild:BatchGetProjects",
        "codebuild:ListProjects",
        "codebuild:ListSourceCredentials",
        "codecommit:GetApprovalRuleTemplate",
        "codecommit:GetRepository",
        "codecommit:ListApprovalRuleTemplates",
        "codecommit:ListRepositories",
        "codedeploy:BatchGetDeploymentTargets",
        "codedeploy:ListDeploymentTargets",
        "codedeploy:ListDeployments",
        "codepipeline:GetPipeline",
        "codepipeline:ListPipelines",
        "codepipeline:ListTagsForResource",
        "codepipeline:ListWebhooks",
        "cognito-identity:DescribeIdentityPool",
        "cognito-identity:GetIdentityPoolRoles",
        "cognito-identity:ListIdentityPools",
        "cognito-identity:ListTagsForResource",
        "cognito-idp:DescribeRiskConfiguration",
        "cognito-idp:DescribeUserPool",
        "cognito-idp:DescribeUserPoolClient",
        "cognito-idp:GetGroup",
        "cognito-idp:ListGroups",
        "cognito-idp:ListResourcesForWebACL",
        "cognito-idp:ListTagsForResource",
        "cognito-idp:ListUserPoolClients",
        "cognito-idp:ListUserPools",
        "cognito-idp:ListUsers",
        "cognito-sync:ListIdentityPoolUsage",
        "comprehend:DescribeFlywheel",
        "comprehend:ListDocumentClassifierSummaries",
        "comprehend:ListDocumentClassifiers",
        "comprehend:ListEntitiesDetectionJobs",
        "comprehend:ListFlywheels",
        "comprehend:ListKeyPhrasesDetectionJobs",
        "comprehend:ListPiiEntitiesDetectionJobs",
        "comprehend:ListSentimentDetectionJobs",
        "comprehend:ListTagsForResource",
        "comprehend:ListTargetedSentimentDetectionJobs",
        "comprehendmedical:ListEntitiesDetectionV2Jobs",
        "config:DescribeConfigRules",
        "config:DescribeConfigurationAggregators",
        "config:DescribeConfigurationRecorderStatus",
        "config:DescribeConfigurationRecorders",
        "config:DescribeDeliveryChannels",
        "config:GetComplianceDetailsByConfigRule",
        "config:ListTagsForResource",
        "connect-campaigns:DescribeCampaign",
        "connect-campaigns:ListCampaigns",
        "connect:DescribeSecurityProfile",
        "connect:DescribeUser",
        "connect:ListInstanceAttributes",
        "connect:ListInstanceStorageConfigs",
        "connect:ListInstances",
        "connect:ListSecurityProfiles",
        "connect:ListUsers",
        "controltower:GetLandingZone"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudConfig1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--prisma_cloud_5-1169731755537611776-PrismaCloudRole-member" {
  name = "prisma_cloud_5-1169731755537611776-PrismaCloudRole-member"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "controltower:ListLandingZones",
        "controltower:ListTagsForResource",
        "databrew:DescribeJob",
        "databrew:DescribeProject",
        "databrew:ListJobs",
        "databrew:ListProjects",
        "datapipeline:DescribePipelines",
        "datapipeline:GetPipelineDefinition",
        "datapipeline:ListPipelines",
        "datasync:DescribeAgent",
        "datasync:DescribeLocationEfs",
        "datasync:DescribeLocationFsxLustre",
        "datasync:DescribeLocationFsxOntap",
        "datasync:DescribeLocationFsxOpenZfs",
        "datasync:DescribeLocationFsxWindows",
        "datasync:DescribeLocationHdfs",
        "datasync:DescribeLocationNfs",
        "datasync:DescribeLocationObjectStorage",
        "datasync:DescribeLocationS3",
        "datasync:DescribeLocationSmb",
        "datasync:DescribeTask",
        "datasync:DescribeTaskExecution",
        "datasync:ListAgents",
        "datasync:ListLocations",
        "datasync:ListTagsForResource",
        "datasync:ListTaskExecutions",
        "datasync:ListTasks",
        "datazone:GetDataSource",
        "datazone:GetDomain",
        "datazone:ListDataSources",
        "datazone:ListDomains",
        "datazone:ListProjects",
        "dax:DescribeClusters",
        "dax:DescribeParameterGroups",
        "dax:DescribeParameters",
        "dax:ListTags",
        "detective:ListDatasourcePackages",
        "detective:ListGraphs",
        "devicefarm:ListProjects",
        "devops-guru:DescribeServiceIntegration",
        "directconnect:DescribeConnections",
        "directconnect:DescribeDirectConnectGateways",
        "directconnect:DescribeVirtualInterfaces",
        "dlm:GetLifecyclePolicies",
        "dlm:GetLifecyclePolicy",
        "dms:DescribeCertificates",
        "dms:DescribeEndpoints",
        "dms:DescribeReplicationInstances",
        "dms:DescribeReplicationTasks",
        "dms:ListTagsForResource",
        "drs:DescribeJobs",
        "drs:DescribeSourceNetworks",
        "drs:DescribeSourceServers",
        "drs:GetReplicationConfiguration",
        "ds:DescribeDirectories",
        "ds:DescribeTrusts",
        "ds:ListTagsForResource",
        "dynamodb:DescribeBackup",
        "dynamodb:DescribeContinuousBackups",
        "dynamodb:DescribeGlobalTable",
        "dynamodb:DescribeTable",
        "dynamodb:DescribeTimeToLive",
        "dynamodb:GetResourcePolicy",
        "dynamodb:ListBackups",
        "dynamodb:ListGlobalTables",
        "dynamodb:ListTables",
        "dynamodb:ListTagsOfResource",
        "ec2:DescribeAccountAttributes",
        "ec2:DescribeAddresses",
        "ec2:DescribeClientVpnAuthorizationRules",
        "ec2:DescribeClientVpnEndpoints",
        "ec2:DescribeCustomerGateways",
        "ec2:DescribeDhcpOptions",
        "ec2:DescribeEgressOnlyInternetGateways",
        "ec2:DescribeFlowLogs",
        "ec2:DescribeImageAttribute",
        "ec2:DescribeImages",
        "ec2:DescribeInstanceAttribute",
        "ec2:DescribeInstanceConnectEndpoints",
        "ec2:DescribeInstanceStatus",
        "ec2:DescribeInstances",
        "ec2:DescribeInternetGateways",
        "ec2:DescribeIpams",
        "ec2:DescribeKeyPairs",
        "ec2:DescribeManagedPrefixLists",
        "ec2:DescribeNatGateways",
        "ec2:DescribeNetworkAcls",
        "ec2:DescribeNetworkInsightsAnalyses",
        "ec2:DescribeNetworkInterfaceAttribute",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DescribeRegions",
        "ec2:DescribeReservedInstances",
        "ec2:DescribeRouteTables",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSnapshotAttribute",
        "ec2:DescribeSnapshots",
        "ec2:DescribeSpotFleetRequests",
        "ec2:DescribeSubnets",
        "ec2:DescribeTags",
        "ec2:DescribeTrafficMirrorSessions",
        "ec2:DescribeTransitGatewayAttachments",
        "ec2:DescribeTransitGatewayRouteTables",
        "ec2:DescribeTransitGatewayVpcAttachments",
        "ec2:DescribeTransitGateways",
        "ec2:DescribeVolumes",
        "ec2:DescribeVpcAttribute",
        "ec2:DescribeVpcEndpointConnectionNotifications",
        "ec2:DescribeVpcEndpointServiceConfigurations",
        "ec2:DescribeVpcEndpointServicePermissions",
        "ec2:DescribeVpcEndpointServices",
        "ec2:DescribeVpcEndpoints",
        "ec2:DescribeVpcPeeringConnections",
        "ec2:DescribeVpcs",
        "ec2:DescribeVpnConnections",
        "ec2:DescribeVpnGateways",
        "ec2:GetEbsEncryptionByDefault",
        "ec2:GetImageBlockPublicAccessState",
        "ec2:GetLaunchTemplateData",
        "ec2:GetManagedPrefixListEntries",
        "ec2:GetSerialConsoleAccessStatus",
        "ec2:GetSnapshotBlockPublicAccessState",
        "ec2:SearchTransitGatewayRoutes",
        "ecr-public:DescribeRegistries",
        "ecr-public:DescribeRepositories",
        "ecr-public:GetRegistryCatalogData",
        "ecr-public:GetRepositoryCatalogData",
        "ecr-public:GetRepositoryPolicy",
        "ecr-public:ListTagsForResource",
        "ecr:DescribeImages",
        "ecr:DescribePullThroughCacheRules",
        "ecr:DescribeRegistry",
        "ecr:DescribeRepositories",
        "ecr:GetLifecyclePolicy",
        "ecr:GetRegistryPolicy",
        "ecr:GetRegistryScanningConfiguration",
        "ecr:GetRepositoryPolicy",
        "ecr:ListTagsForResource",
        "ecs:DescribeClusters",
        "ecs:DescribeContainerInstances",
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListClusters",
        "ecs:ListContainerInstances",
        "ecs:ListServices",
        "ecs:ListTagsForResource",
        "ecs:ListTaskDefinitions",
        "ecs:ListTasks",
        "eks:DescribeCluster",
        "eks:DescribeFargateProfile",
        "eks:DescribeNodegroup",
        "eks:ListClusters",
        "eks:ListFargateProfiles",
        "eks:ListNodegroups",
        "eks:ListTagsForResource",
        "elasticache:DescribeCacheClusters",
        "elasticache:DescribeCacheEngineVersions",
        "elasticache:DescribeCacheSubnetGroups",
        "elasticache:DescribeReplicationGroups",
        "elasticache:DescribeReservedCacheNodes",
        "elasticache:DescribeServerlessCaches",
        "elasticache:DescribeSnapshots",
        "elasticache:DescribeUsers",
        "elasticache:ListTagsForResource",
        "elasticbeanstalk:DescribeApplications",
        "elasticbeanstalk:DescribeConfigurationSettings",
        "elasticbeanstalk:DescribeEnvironmentResources",
        "elasticbeanstalk:DescribeEnvironments",
        "elasticbeanstalk:ListTagsForResource",
        "elasticfilesystem:DescribeAccessPoints",
        "elasticfilesystem:DescribeBackupPolicy",
        "elasticfilesystem:DescribeFileSystemPolicy",
        "elasticfilesystem:DescribeFileSystems",
        "elasticfilesystem:DescribeMountTargetSecurityGroups",
        "elasticfilesystem:DescribeMountTargets",
        "elasticfilesystem:DescribeTags",
        "elasticloadbalancing:DescribeListeners",
        "elasticloadbalancing:DescribeLoadBalancerAttributes",
        "elasticloadbalancing:DescribeLoadBalancerPolicies"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudConfig2"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--prisma_cloud_6-1169731755537611776-PrismaCloudRole-member" {
  name = "prisma_cloud_6-1169731755537611776-PrismaCloudRole-member"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "kms:ListAliases",
        "kms:ListGrants",
        "kms:ListKeyPolicies",
        "kms:ListKeyRotations",
        "kms:ListKeys",
        "kms:ListResourceTags",
        "lakeformation:DescribeLakeFormationIdentityCenterConfiguration",
        "lakeformation:DescribeResource",
        "lakeformation:GetDataLakeSettings",
        "lakeformation:GetLFTag",
        "lakeformation:ListLFTags",
        "lakeformation:ListPermissions",
        "lakeformation:ListResources",
        "lambda:GetEventSourceMapping",
        "lambda:GetFunctionConcurrency",
        "lambda:GetFunctionEventInvokeConfig",
        "lambda:GetFunctionUrlConfig",
        "lambda:GetLayerVersion",
        "lambda:GetLayerVersionPolicy",
        "lambda:GetPolicy",
        "lambda:GetRuntimeManagementConfig",
        "lambda:ListCodeSigningConfigs",
        "lambda:ListEventSourceMappings",
        "lambda:ListFunctions",
        "lambda:ListLayerVersions",
        "lambda:ListLayers",
        "lambda:ListTags",
        "lambda:ListVersionsByFunction",
        "lex:DescribeBot",
        "lex:DescribeBotVersion",
        "lex:GetBot",
        "lex:GetBotVersions",
        "lex:GetBots",
        "lex:ListBotVersions",
        "lex:ListBots",
        "lex:ListTagsForResource",
        "lightsail:GetBuckets",
        "lightsail:GetContainerServices",
        "lightsail:GetDisks",
        "lightsail:GetInstances",
        "lightsail:GetKeyPairs",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams",
        "logs:DescribeMetricFilters",
        "logs:DescribeSubscriptionFilters",
        "logs:GetLogDelivery",
        "logs:GetLogEvents",
        "logs:ListLogDeliveries",
        "logs:ListTagsLogGroup",
        "lookoutequipment:ListDatasets",
        "lookoutmetrics:ListAnomalyDetectors",
        "lookoutvision:ListProjects",
        "macie2:GetClassificationExportConfiguration",
        "macie2:GetFindingsPublicationConfiguration",
        "macie2:GetMacieSession",
        "macie2:GetRevealConfiguration",
        "macie2:ListClassificationJobs",
        "macie2:ListOrganizationAdminAccounts",
        "managedblockchain:ListNetworks",
        "mediastore:DescribeContainer",
        "mediastore:GetContainerPolicy",
        "mediastore:GetCorsPolicy",
        "mediastore:ListContainers",
        "mediastore:ListTagsForResource",
        "memorydb:DescribeClusters",
        "memorydb:DescribeParameterGroups",
        "memorydb:DescribeParameters",
        "memorydb:DescribeSnapshots",
        "memorydb:DescribeSubnetGroups",
        "memorydb:ListTags",
        "mgh:DescribeHomeRegionControls",
        "mgn:DescribeLaunchConfigurationTemplates",
        "mgn:DescribeReplicationConfigurationTemplates",
        "mgn:DescribeSourceServers",
        "mobiletargeting:GetApps",
        "mobiletargeting:GetEmailChannel",
        "mobiletargeting:GetSmsChannel",
        "mq:DescribeBroker",
        "mq:ListBrokers",
        "network-firewall:DescribeFirewall",
        "network-firewall:DescribeFirewallPolicy",
        "network-firewall:DescribeLoggingConfiguration",
        "network-firewall:DescribeResourcePolicy",
        "network-firewall:ListFirewallPolicies",
        "network-firewall:ListFirewalls",
        "network-firewall:ListRuleGroups",
        "networkmanager:DescribeGlobalNetworks",
        "networkmanager:GetCoreNetwork",
        "networkmanager:GetDevices",
        "networkmanager:GetSites",
        "networkmanager:ListCoreNetworks",
        "opsworks:DescribeUserProfiles",
        "organizations:DescribeAccount",
        "organizations:DescribeOrganization",
        "personalize:ListDatasetImportJobs",
        "pipes:DescribePipe",
        "pipes:ListPipes",
        "polly:DescribeVoices",
        "polly:ListSpeechSynthesisTasks",
        "qldb:DescribeLedger",
        "qldb:ListLedgers",
        "qldb:ListTagsForResource",
        "quicksight:DescribeAccountSettings",
        "quicksight:DescribeIpRestriction",
        "quicksight:ListDataSets",
        "quicksight:ListDataSources",
        "quicksight:ListTagsForResource",
        "ram:GetResourceShares",
        "ram:ListPrincipals",
        "ram:ListResources",
        "rbin:GetRule",
        "rbin:ListRules",
        "rbin:ListTagsForResource",
        "rds:DescribeDBClusterParameterGroups",
        "rds:DescribeDBClusterParameters",
        "rds:DescribeDBClusterSnapshotAttributes",
        "rds:DescribeDBClusterSnapshots",
        "rds:DescribeDBClusters",
        "rds:DescribeDBInstanceAutomatedBackups",
        "rds:DescribeDBInstances",
        "rds:DescribeDBParameterGroups",
        "rds:DescribeDBParameters",
        "rds:DescribeDBProxies",
        "rds:DescribeDBProxyTargetGroups",
        "rds:DescribeDBProxyTargets",
        "rds:DescribeDBSnapshotAttributes",
        "rds:DescribeDBSnapshots",
        "rds:DescribeEventSubscriptions",
        "rds:DescribeOptionGroups",
        "rds:ListTagsForResource",
        "redshift-serverless:ListWorkgroups",
        "redshift:DescribeClusterParameters",
        "redshift:DescribeClusters",
        "redshift:DescribeLoggingStatus",
        "resiliencehub:ListApps",
        "route53:GetDNSSEC",
        "route53:GetHealthCheck",
        "route53:ListHealthChecks",
        "route53:ListHostedZones",
        "route53:ListQueryLoggingConfigs",
        "route53:ListResourceRecordSets",
        "route53:ListTagsForResource",
        "route53domains:GetDomainDetail",
        "route53domains:ListDomains",
        "route53domains:ListTagsForDomain",
        "route53resolver:ListResolverEndpoints",
        "route53resolver:ListResolverQueryLogConfigAssociations",
        "route53resolver:ListResolverQueryLogConfigs",
        "route53resolver:ListTagsForResource",
        "s3:DescribeJob",
        "s3:GetAccelerateConfiguration",
        "s3:GetAccessPoint",
        "s3:GetAccessPointPolicy",
        "s3:GetAccessPointPolicyStatus",
        "s3:GetAccountPublicAccessBlock",
        "s3:GetAnalyticsConfiguration",
        "s3:GetBucketAcl",
        "s3:GetBucketCORS",
        "s3:GetBucketLocation",
        "s3:GetBucketLogging",
        "s3:GetBucketObjectLockConfiguration",
        "s3:GetBucketOwnershipControls",
        "s3:GetBucketPolicy",
        "s3:GetBucketPolicyStatus",
        "s3:GetBucketPublicAccessBlock",
        "s3:GetBucketTagging",
        "s3:GetBucketVersioning",
        "s3:GetBucketWebsite",
        "s3:GetEncryptionConfiguration",
        "s3:GetJobTagging",
        "s3:GetLifecycleConfiguration",
        "s3:GetReplicationConfiguration",
        "s3:ListAccessPoints",
        "s3:ListAllMyBuckets",
        "s3:ListJobs",
        "s3:ListMultiRegionAccessPoints",
        "s3:ListStorageLensConfigurations",
        "sagemaker:DescribeCodeRepository",
        "sagemaker:DescribeDomain",
        "sagemaker:DescribeEndpoint",
        "sagemaker:DescribeEndpointConfig",
        "sagemaker:DescribeLabelingJob",
        "sagemaker:DescribeModel",
        "sagemaker:DescribeNotebookInstance",
        "sagemaker:DescribeNotebookInstanceLifecycleConfig",
        "sagemaker:DescribeProcessingJob",
        "sagemaker:DescribeStudioLifecycleConfig",
        "sagemaker:DescribeTrainingJob",
        "sagemaker:DescribeUserProfile"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudConfig4"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--prisma_cloud_7-1169731755537611776-PrismaCloudRole-member" {
  name = "prisma_cloud_7-1169731755537611776-PrismaCloudRole-member"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "elasticloadbalancing:DescribeLoadBalancers",
        "elasticloadbalancing:DescribeRules",
        "elasticloadbalancing:DescribeSSLPolicies",
        "elasticloadbalancing:DescribeTags",
        "elasticloadbalancing:DescribeTargetGroups",
        "elasticloadbalancing:DescribeTargetHealth",
        "elasticmapreduce:DescribeCluster",
        "elasticmapreduce:DescribeSecurityConfiguration",
        "elasticmapreduce:DescribeStudio",
        "elasticmapreduce:GetBlockPublicAccessConfiguration",
        "elasticmapreduce:ListClusters",
        "elasticmapreduce:ListInstances",
        "elasticmapreduce:ListSecurityConfigurations",
        "elasticmapreduce:ListStudios",
        "elastictranscoder:ListPipelines",
        "emr-serverless:GetApplication",
        "emr-serverless:ListApplications",
        "es:DescribeElasticsearchDomains",
        "es:ListDomainNames",
        "es:ListTags",
        "events:DescribeArchive",
        "events:DescribeConnection",
        "events:ListApiDestinations",
        "events:ListArchives",
        "events:ListConnections",
        "events:ListEndpoints",
        "events:ListEventBuses",
        "events:ListRules",
        "events:ListTagsForResource",
        "events:ListTargetsByRule",
        "firehose:DescribeDeliveryStream",
        "firehose:ListDeliveryStreams",
        "firehose:ListTagsForDeliveryStream",
        "fis:GetExperiment",
        "fis:GetExperimentTemplate",
        "fis:ListExperimentTemplates",
        "fis:ListExperiments",
        "fms:GetAdminAccount",
        "fms:GetPolicy",
        "fms:ListComplianceStatus",
        "fms:ListPolicies",
        "forecast:DescribeAutoPredictor",
        "forecast:DescribeDataset",
        "forecast:DescribePredictor",
        "forecast:ListDatasets",
        "forecast:ListPredictors",
        "forecast:ListTagsForResource",
        "frauddetector:GetEntityTypes",
        "frauddetector:GetLabels",
        "frauddetector:GetVariables",
        "frauddetector:ListTagsForResource",
        "fsx:DescribeBackups",
        "fsx:DescribeFileSystems",
        "glacier:GetVaultAccessPolicy",
        "glacier:GetVaultLock",
        "glacier:ListTagsForVault",
        "glacier:ListVaults",
        "globalaccelerator:DescribeAcceleratorAttributes",
        "globalaccelerator:DescribeEndpointGroup",
        "globalaccelerator:DescribeListener",
        "globalaccelerator:ListAccelerators",
        "globalaccelerator:ListEndpointGroups",
        "globalaccelerator:ListTagsForResource",
        "glue:GetBlueprint",
        "glue:GetBlueprintRun",
        "glue:GetBlueprintRuns",
        "glue:GetConnection",
        "glue:GetConnections",
        "glue:GetCrawler",
        "glue:GetDataCatalogEncryptionSettings",
        "glue:GetDatabases",
        "glue:GetDevEndpoints",
        "glue:GetJobs",
        "glue:GetResourcePolicies",
        "glue:GetSchema",
        "glue:GetSecurityConfigurations",
        "glue:GetTables",
        "glue:GetTags",
        "glue:GetTriggers",
        "glue:ListBlueprints",
        "glue:ListCrawlers",
        "glue:ListSchemas",
        "grafana:DescribeWorkspace",
        "grafana:DescribeWorkspaceAuthentication",
        "grafana:ListWorkspaces",
        "greengrass:ListCoreDefinitions",
        "greengrass:ListGroups",
        "guardduty:DescribeOrganizationConfiguration",
        "guardduty:GetAdministratorAccount",
        "guardduty:GetDetector",
        "guardduty:GetFindings",
        "guardduty:GetIPSet",
        "guardduty:GetMasterAccount",
        "guardduty:GetThreatIntelSet",
        "guardduty:ListDetectors",
        "guardduty:ListFindings",
        "guardduty:ListIPSets",
        "guardduty:ListThreatIntelSets",
        "iam:GenerateCredentialReport",
        "iam:GenerateServiceLastAccessedDetails",
        "iam:GetAccountAuthorizationDetails",
        "iam:GetAccountPasswordPolicy",
        "iam:GetAccountSummary",
        "iam:GetCredentialReport",
        "iam:GetGroupPolicy",
        "iam:GetInstanceProfile",
        "iam:GetOpenIDConnectProvider",
        "iam:GetPolicyVersion",
        "iam:GetRole",
        "iam:GetRolePolicy",
        "iam:GetSAMLProvider",
        "iam:GetServiceLastAccessedDetails",
        "iam:GetUserPolicy",
        "iam:ListAccessKeys",
        "iam:ListAttachedGroupPolicies",
        "iam:ListAttachedRolePolicies",
        "iam:ListAttachedUserPolicies",
        "iam:ListEntitiesForPolicy",
        "iam:ListGroupPolicies",
        "iam:ListGroups",
        "iam:ListGroupsForUser",
        "iam:ListInstanceProfiles",
        "iam:ListInstanceProfilesForRole",
        "iam:ListMFADeviceTags",
        "iam:ListMFADevices",
        "iam:ListOpenIDConnectProviders",
        "iam:ListPolicies",
        "iam:ListPolicyTags",
        "iam:ListPolicyVersions",
        "iam:ListRolePolicies",
        "iam:ListRoleTags",
        "iam:ListRoles",
        "iam:ListSAMLProviderTags",
        "iam:ListSAMLProviders",
        "iam:ListSSHPublicKeys",
        "iam:ListServerCertificateTags",
        "iam:ListServerCertificates",
        "iam:ListServiceSpecificCredentials",
        "iam:ListUserPolicies",
        "iam:ListUserTags",
        "iam:ListUsers",
        "iam:ListVirtualMFADevices",
        "identitystore:ListGroupMemberships",
        "identitystore:ListGroups",
        "identitystore:ListUsers",
        "imagebuilder:GetComponent",
        "imagebuilder:GetImagePipeline",
        "imagebuilder:GetImageRecipe",
        "imagebuilder:GetInfrastructureConfiguration",
        "imagebuilder:ListComponents",
        "imagebuilder:ListImagePipelines",
        "imagebuilder:ListImageRecipes",
        "imagebuilder:ListInfrastructureConfigurations",
        "inspector2:ListAccountPermissions",
        "inspector2:ListCoverage",
        "inspector2:ListFilters",
        "inspector2:ListFindings",
        "inspector:DescribeAssessmentTemplates",
        "inspector:DescribeFindings",
        "inspector:DescribeRulesPackages",
        "inspector:ListAssessmentRunAgents",
        "inspector:ListAssessmentRuns",
        "inspector:ListAssessmentTemplates",
        "inspector:ListFindings",
        "inspector:ListRulesPackages",
        "iot:DescribeAccountAuditConfiguration",
        "iot:DescribeDomainConfiguration",
        "iot:ListDomainConfigurations",
        "iot:ListTagsForResource",
        "iotanalytics:ListChannels",
        "iotanalytics:ListDatastores",
        "iotanalytics:ListTagsForResource",
        "iotevents:ListInputs",
        "iotfleetwise:ListSignalCatalogs",
        "ivs:GetChannel",
        "ivs:ListChannels",
        "kafka:DescribeConfiguration",
        "kafka:DescribeVpcConnection",
        "kafka:ListClusters",
        "kafka:ListConfigurations",
        "kafka:ListVpcConnections",
        "kendra:DescribeIndex",
        "kendra:ListTagsForResource",
        "kinesis:DescribeStream",
        "kinesis:ListStreams",
        "kinesis:ListTagsForStream",
        "kinesisanalytics:DescribeApplication",
        "kinesisanalytics:ListApplications",
        "kinesisanalytics:ListTagsForResource",
        "kinesisvideo:DescribeNotificationConfiguration",
        "kinesisvideo:ListStreams",
        "kinesisvideo:ListTagsForStream",
        "kms:DescribeKey",
        "kms:GetKeyPolicy",
        "kms:GetKeyRotationStatus"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "PrismaCloudConfig3"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
