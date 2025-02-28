Case : Called Backend.tf of the previous file(day4) whch is present in remote(S3) which has configs saved according to the day4 statefile. 

Result : Instance created and gave path in backend.tf under key as main1/terraform.tfstate so it will save the current statefile(Day5.1) inside main1 folder in s3 

By this process there will be no merge conflicts and overwriting where it can cause the statefile to be corrupted.