 # The configuration for the `remote` backend.
terraform {
       backend "remote" {
        # The name of your Terraform Cloud organization.
         organization = "TCSL"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "hello-world"
         }
       }
     }

     # An example resource that does nothing.
     resource "null_resource" "example" {
       triggers = {
         value = "A example resource that does nothing!"
       }
     }
