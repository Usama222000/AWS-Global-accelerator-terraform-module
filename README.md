# AWS-Global-accelerator-terraform-module

This Terraform module sets up an AWS Global Accelerator with a Network Load Balancer (NLB) endpoint.


### Clone the Repo
Clone the repository from atltis-repo-git-repo-to-be-added.

### AWS Related Inputs:
* name: <string>  (resource name)
* endpoint_id: <string> (endpoint of resource for example nlb endpoint)
* weight: <number> 
* from_port: <number
* protocol: <String>

### Deploying Atlantis Server
After Updating the above variables in vars file of terraform project. Run the following atlantis commands.
Note: Currently we're using only dev.tfvars for deploying atlantis server you can change and create a new file by your own needs.
```
terraform plan -var-file=./config/dev.tfvars
```

Check your plan and verify the changes and apply changes using 
```
terraform apply -var-file=./config/dev.tfvars
