# HSDP Prometheus module
This module creates a prometheus server on a Container Host
as well as a Cloud foundry nginx reverse proxy to this server
A good example of connecting disparate HSDP services with Terraform

# Usage
Use this module to run a custom prometheus instance for scraping
from your Cloud foundry resources

## Providers

| Name | Version |
|------|---------|
| archive | n/a |
| cloudfoundry | n/a |
| hsdp | n/a |
| local | n/a |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| app\_domain | The app domain to use | `string` | n/a | yes |
| bastion\_host | Bastion host to use for SSH connections | `string` | n/a | yes |
| instance\_type | The instance type to use | `string` | `"t2.medium"` | no |
| org\_name | Cloudfoundry ORG to use for reverse proxy | `string` | n/a | yes |
| private\_key | Private key for SSH access | `string` | n/a | yes |
| user | LDAP user to use for connections | `string` | n/a | yes |
| user\_groups | User groups to assign to cluster | `list(string)` | `[]` | no |
| volume\_size | The volume size to use in GB | `number` | `50` | no |

## Outputs

| Name | Description |
|------|-------------|
| prometheus\_id | Server ID of prometheus |
| prometheus\_ip | Private IP address of Prometheus server |

# Getting help / Contact
andy.lo-a-foe@philips.com

# License
License is MIT
