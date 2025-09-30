resource "aws_s3_bucket" "tfer--grabaciones-nice-konecta" {
  bucket        = "grabaciones-nice-konecta"
  force_destroy = "false"

  grant {
    id          = "c51ea7314c1da1df99b5d25a9e818d9ce5a4e2af7863459b216083dca604db9f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = "0"
    enabled                                = "true"
    id                                     = "IT"

    transition {
      days          = "0"
      storage_class = "INTELLIGENT_TIERING"
    }
  }

  object_lock_enabled = "false"
  region              = "eu-west-1"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    Country  = "Espana"
    Name     = "grabaciones-nice-konecta"
    Platform = "Terraform"
    Project  = "Nice"
  }

  tags_all = {
    Country  = "Espana"
    Name     = "grabaciones-nice-konecta"
    Platform = "Terraform"
    Project  = "Nice"
  }

  versioning {
    enabled    = "true"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--stackset-stacksetcloudtrailwitchcloud-trailbucket-1wcgukbf1vxhc" {
  bucket        = "stackset-stacksetcloudtrailwitchcloud-trailbucket-1wcgukbf1vxhc"
  force_destroy = "false"

  grant {
    id          = "c51ea7314c1da1df99b5d25a9e818d9ce5a4e2af7863459b216083dca604db9f"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  region              = "eu-west-1"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  tags = {
    Platform = "Cloudformation"
  }

  tags_all = {
    Platform = "Cloudformation"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}
