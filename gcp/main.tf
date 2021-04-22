# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started
# # Google Project - GCP and GKE Training - https://console.cloud.google.com/iam-admin/settings?project=rich-involution-303217

# # The project field should be your personal project id. 
# # The project indicates the default GCP project all of your resources will be created in. Most Terraform resources will have a project field.

# # telus project
# # export GOOGLE_APPLICATION_CREDENTIALS="C:\\Users\\T929417\\Documents\\Training\\Terraform\\gcp-key-terraform.json"
provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "vm_instance" {
  count                     = var.stack_count
  name                      = "emr-${count.index + 1}"
  machine_type              = "e2-micro"
  hostname                  = "emr-${count.index + 1}.emrlab.ca"
  allow_stopping_for_update = true
  desired_status            = "RUNNING"
  tags                      = ["ssh"]
  metadata = {
    enable-oslogin = "TRUE"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  lifecycle {
    ignore_changes = [attached_disk]
  }

  network_interface {
    # Use subnetwork from emr_gcp_core
    subnetwork = data.terraform_remote_state.emrlab_gcp_core.outputs.vpc_module_outputs.subnets_self_links[3]
    }
# }
}