variable stack_count {
  type        = number
  default     = 2
  description = "Amount application stacks to create"
}

variable "zone" {
  default = "northamerica-northeast1-a"
}

variable "region" {
  default = "northamerica-northeast1"
}

variable project_id {
  type        = string
  default     = "gcp-and-gke-training-dave-a"
  description = "Google Project ID"
}