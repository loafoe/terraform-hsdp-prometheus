# HSDP Prometheus module
This module creates a prometheus server on a Container Host
as well as a Cloud foundry nginx reverse proxy to this server. 
A good example of connecting disparate HSDP services with Terraform

# Usage
Use this module to run a custom prometheus instance for scraping
from your Cloud foundry resources

```hcl
module "prometheus" {
  source = "github.com/philips-internal/terraform-hsdp-prometheus"

  bastion_host = var.bastion_host
  user         = var.cf_user
  private_key  = file(var.private_key_file)
  user_groups  = [var.cf_user]
  org_name     = var.cf_org
  app_domain   = data.cloudfoundry_domain.us_east.name
}
```

# Getting help / Contact
andy.lo-a-foe@philips.com

# License
License is MIT
