ami-id = "ami-0ddfba243cbee3768"
key = "KEYPAIR"
type = ""

#generally when we run terraform plan and terraform apply it will run terraform.tfvars file by defualt

#if we want to run a specific file other then the default file we --> terraform plan -var-file="dev.tfvars"

# In the terminal/output menu we can give instance type hardcoded value directly also and run :-
# terraform plan -var="type=t2.medium"