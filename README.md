## veeam-terraform-modules

A Terraform module that will create a service account in the project which may be connected to the Veeam appliance for
performing VM disk backups and snapshots.

How to use in your project:

```terraform
module "veeam-service-account" {
  source                          = "github.com/ONSdigital/veeam-terraform-modules"
  veeam_appliance_service_account = "{{ Replace with email address of Veeam appliance service account }}"
}
```

This will create a new service account with all required permissions in your project. The Veeam appliance service account
variable must be specified.

The Veeam appliance service account will be granted permissions to discover the newly created backup service account.