module "azure-functions" {
  source = "./azure-functions.sentinel"
}

module "tfplan-functions" {
  source = "./tfplan-functions.sentinel"
}

policy "allowed-terraform-version" {
  enforcement_level = "hard-mandatory"
}
policy "enforce-tags" {
  enforcement_level = "hard-mandatory"
}
policy "restrict-vm-size" {
  enforcement_level = "hard-mandatory"
}
