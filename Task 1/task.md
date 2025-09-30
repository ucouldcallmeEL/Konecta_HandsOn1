# Cloud Internship – Task 1

Welcome to your first task! 🎉  
This will help you set up your workstation, connect to the AWS account, and verify Terraform is working correctly.

---

## 1. AWS Login
- Use the credentials provided in your email to log in at:  
  👉 [AWS Console](https://console.aws.amazon.com)

---

## 2. Configure AWS CLI
1. Install the [AWS CLI v2](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).
2. Run the following command in your terminal (PowerShell on Windows, or Terminal on Mac/Linux):

   ```bash
   aws configure
   ```

   Enter the following values (from your email credentials):
   - **AWS Access Key ID**
   - **AWS Secret Access Key**
   - **Default region:** `eu-west-1`  
   - **Output format:** `json`

3. Test your configuration with:
   ```bash
   aws sts get-caller-identity
   ```

   This should return your AWS account and user details.

---

## 3. Install Terraform
1. Download and install Terraform from the [official installation page](https://developer.hashicorp.com/terraform/install).
2. Verify installation:
   ```bash
   terraform -version
   ```

---

## 4. Install Visual Studio Code
- Download and install [VS Code](https://code.visualstudio.com/).
- Install the following extensions:
  - **HashiCorp Terraform**
  - **AWS Toolkit**
  - **GitHub Pull Requests and Issues**

---

## 5. Initialize Terraform Project
1. Create a working folder (example: `C:\Terraform` or `~/terraform`).
2. Inside the folder, create a file called `main.tf` with the following content:

   ```hcl
   terraform {
     required_providers {
       aws = {
         source  = "hashicorp/aws"
         version = "~> 6.0"
       }
     }
   }

   provider "aws" {
     region = "eu-west-1"
   }
   ```

3. Open the folder in VS Code.
4. Run the following commands in your terminal:

   ```bash
   terraform init
   ```

---

## 6. Import AWS Account into Terraform
1. Run the following command (replace `123456789012` with your **AWS Account ID**):

   ```bash
   terraform import aws_organizations_account.main 335339962974
   ```

   > ⚠️ If the resource `aws_organizations_account` is not defined yet, create a resource block in `main.tf` like this:
   ```hcl
   resource "aws_organizations_account" "main" {
     name  = "InternAccount"
     email = "intern@example.com"
   }
   ```
   (This will allow Terraform to track the account.)

2. After importing, run:
   ```bash
   terraform plan
   ```

3. The expected output should show:
   ```
   No changes. Infrastructure is up-to-date.
   ```

---

## ✅ Deliverables
Please submit the following screenshots in the **#internship-tasks** Slack channel:
1. The output of `aws sts get-caller-identity` showing your account details.
2. The output of successful `terraform import`.
3. The output of `terraform plan` showing **“No changes”**.

---

### 🎯 Objective
By completing this task, you will:
- Access AWS securely with your credentials.
- Set up Terraform on your workstation.
- Import the AWS Account into Terraform state.
- Confirm Terraform plan shows no pending changes.

---
