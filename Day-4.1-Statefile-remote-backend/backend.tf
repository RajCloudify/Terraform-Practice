terraform {
  backend "s3" {
    bucket = "rajsbbuckett"
    key    = "path/to/my/key"
    region = "ap-south-1"
  }
}

#by this the statefile will not be created in local and will be made inside the bucket
#source availble at terraform registry (Backend terraform S3)