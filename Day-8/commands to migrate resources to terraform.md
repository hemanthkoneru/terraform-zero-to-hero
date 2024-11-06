# To import the existing resource configuration from AWS to terraform, 

**Step-1:**  **we need to execute the below command, which will store the entire configuration of existing resource into a file called "generated_resoruces.tf"
**

$ terraform plan -generate-config-out=generated_resources.tf

After executing the above command, the entire info about the specified resource will be printed to the specified called "generated_resources.tf"
**Note: ** an error will be seen in regards to ipv6 and we may ignore it for now.

**Step-2 :** Copy the entire resource configuration we got in the "generated_resources.tf" file to the main.tf and we may delete the "generated_resources.tf" file aftre copying

and now execute the below commands

$ terraform init

$ teffaform plan 

after executing plan command, we will see that the command has been executed successfully and still it is showing that **"Plan: 1 to add, 0 to change, 0 to destroy."**

The reason is that becasue of the statefile.

Now we need to execute the below command so that the terraform will understand and import the resources from the aws.

$ terraform import aws_instance.example <instanceid/resourceid>
