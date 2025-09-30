resource "aws_iam_group" "tfer--Developers" {
  name = "Developers"
  path = "/"
}

resource "aws_iam_group" "tfer--ManagedMFA" {
  name = "ManagedMFA"
  path = "/"
}

resource "aws_iam_group" "tfer--RequiredMFA" {
  name = "RequiredMFA"
  path = "/"
}
