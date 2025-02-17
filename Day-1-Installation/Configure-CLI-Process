Here’s the same information formatted in GitHub Markdown:  

```markdown
# Setting Up AWS CLI and Configuring Terraform  

To work with AWS using Terraform, you'll need to set up the AWS CLI and configure your credentials. Follow these steps to get everything ready:  

## 1. Install AWS CLI  

Ensure that the AWS CLI is installed on your system. You can download and install it from the official [AWS CLI page](https://aws.amazon.com/cli/).  

## 2. Create an IAM User in AWS  

To interact with AWS programmatically, you need an IAM user with the necessary permissions. Here’s how to set it up:  

1. Log in to the AWS Management Console with an admin account.  
2. Open the IAM service and navigate to **Users**.  
3. Click **"Add user"**, provide a username, and select **"Programmatic access"** as the access type.  
4. Assign the required permissions by attaching policies. For basic EC2 operations, you can attach **AmazonEC2FullAccess**. If additional access is needed, assign the relevant policies.  
5. Review and create the user. **Save the Access Key ID and Secret Access Key** displayed at the end—these will be required for configuration.  

## 3. Configure AWS CLI with Credentials  

Once your IAM user is created, you need to configure the AWS CLI by running the following command in your terminal:  

```sh
aws configure
```  

You’ll be prompted to enter:  
- **AWS Access Key ID**  
- **AWS Secret Access Key**  
- **Default region** (e.g., `us-east-1`)  
- **Output format** (default is `json`, but you can choose `table` or `text`)  

This will store your credentials securely and allow Terraform to interact with AWS using the AWS CLI.  
```  

This format ensures readability and is well-structured for GitHub documentation. Let me know if you need further modifications! 🚀
