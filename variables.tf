variable instance_count {
  type = map(number)
  description = "Virtual Machine instances to create"
}

variable "zone" {
  type = map(string)
}
  # default = "northamerica-northeast1-a"

variable "region" {
  type = map(string)
}
  # default = "northamerica-northeast1"

variable project_id {
  type = map(string)
  description = "Google Project ID"
}

locals {
  env_name = lower(terraform.workspace)
}

