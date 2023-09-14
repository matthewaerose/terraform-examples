# Getting Started
In order to utilize the Terraform here, you'll need an Azure subscription.

You can get one for free by signing up [here](https://azure.microsoft.com/en-us/free).

# Terraform Credentials
Terraform requires _some_ form of credentials in order to use cloud services.
Azure has many different options. I'll describe a few here.

## using the `az` CLI tool
The easiest method is to use the `az` tool. It is the method I'll be using in the examples.
`az` is Azure's CLI tool for interacting with Azure resources.
It is available for download [here](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) for all major platforms.

Once downloaded, run `az login`. This will move you through the flow of logging in to the browser and authorizing the `az` CLI tool.

Once authorized, you should be able to run `az account list` and see you available subscriptions.

>NOTE: Azure uses Role Based Access Control (RBAC) for _all_ interactions with its platform. Meaning, if your Azure user doesn't have the appropriate role, you won't be able to everything in these examples. You can check your Azure Role for the subscription you are using by running `az role assignment list`. I *_encourage_* you to read up on the `az` cli tool as it is incredibly powerful and can save you time.

>NOTE: If you created a brand new Azure account, there will only be a single user, yours, and you will have the role Owner. This role is like "super admin" and allows you to perform any action. This is more than sufficient for these exercises.

Now that the `az` CLI tool is working, lets start using Terraform.

### Using Terraform with `az`
The hashicorp/azurerm provider has great instructions for using the `az` tool with Terraform [here](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli). I'll capture the gist of it here.

Terraform uses the default subscription to perform any actions, unless you specify otherwise. You can find the default subscription by running `az account list | jq '.[] | select(.isDefault == true)'`

You are now ready to `terraform init && terraform plan` in this directory and see the prospective plan!

## using a service principal