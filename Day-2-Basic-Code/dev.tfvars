ami-id = "ami-0ddfba243cbee3768"
key = "KEYPAIR"
type = "t2.micro"

#if there are multiple files in tfvars and you need to run a specific enviorment example : test.tfvars,dev.tfvars,etc...

#terraform plan -var-file="dev.tfvars"
#terraform apply -var-file="dev.tfvars" 