terraform {
backend "s3" {
    bucket         = "rajsbbuckett"  # Name of the S3 bucket where the state will be stored.
    region         =  "ap-south-1"
    key            = "main1/terraform.tfstate" # Path within the bucket where the state will be read/written.
    dynamodb_table = "terraform-state-lock-dynamo" # Name of DynamoDB table used for state locking, note: first run day-4.2-s3-dynamodb resource so that it will create the resource first then run day-4.1-state-remote-backend
    encrypt        = true  # Ensures the state is encrypted at rest in S3.
}
}