case 1 ---> creating a backend.tf file in which we mention the bucket detail to store the statefile and run terraform apply and check... 

Result ---> Resource created and statefile is present in rajsbbuckett-->path/to/my/key (Object)

case 2 ---> Created a demo developer on an ec2 instance and cloned the project and ran terraform plan,terraform apply to verify

Result ---> It is reading the statefile present in remote bucket and is giving response accordingly that the infrastructure matches the configuration 

case 3 ---> Adding a resource in main.tf (local) and running apply 

Result ---> Resource created. But in the remote(developer-2)ran the command terraform plan, it says to destroy!! Because it only recognizes the statefile but does not have the update main.tf file as the local developer did not upload it on GIT.

Solution ---> Every small change you do in the file or any modifications make sure it is pushed in the remote repository 