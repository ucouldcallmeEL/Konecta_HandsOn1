resource "aws_iam_user" "tfer--AIDAU4E6RYJPCU2FXIXGZ" {
  force_destroy = "false"
  name          = "grabaciones_nice.prog"
  path          = "/"

  tags = {
    name = "Programatico para acceso a S3 de grabaciones de Nice"
  }

  tags_all = {
    name = "Programatico para acceso a S3 de grabaciones de Nice"
  }
}
