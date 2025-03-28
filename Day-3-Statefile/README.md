#### Test Case-1 ####
Changing settings (ec2 state) in remote(AWS) and verifying how does the statefile reacts to it.

### Result ######  :- If you've changed settings in remote (AWS console manually) the statefile has to update in your local terraform, in order for it to update, iniate terraform apply and the statefiles get updated   

##### Test Case-2 #####
Changing (EC2)AZ in local and viewing what happens in the console
-->Initially the EC2 was in ap-south-1b so in the state file it is recorded as it is, added additional resource and mentioned ap-south-1a

Observation :- When ran command terraform plan, it says Plan:1, 0 to change, 1 to destroy.

### Result #### 
Iniated terraform apply --auto-aprove, it destroyed the current instance and created an instance according to the desired state.
