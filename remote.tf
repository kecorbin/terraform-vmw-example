terraform {
  backend "remote" {
    hostname = "ptfe.this-demo.rocks"
    organization = "kcorbin"

    workspaces {
      name = "terraform-vmw-example"
    }
  }
}

