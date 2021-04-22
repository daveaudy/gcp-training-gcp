data terraform_remote_state emrlab_gcp_core {
  backend = "remote"

  config = {
    organization = "thps_iac"
    workspaces = {
      name = "emrlab-gcp-core"
    }
  }
}