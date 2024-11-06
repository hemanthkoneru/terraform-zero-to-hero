# To import the existing resource configuration from AWS to terraform, 

**we need to execute the below command, which will store the entire configuration of existing resource into a file called "generated_resoruces.tf"
**
bash
terraform plan -generate-config-out=generated_resources.tf

