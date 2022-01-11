include "root" {
   path = find_in_parent_folders("root.hcl")
   merge_strategy = "deep"
}

locals {
   some_tag = "my-deployment"
}

terraform {
   source = "../echo"
}

inputs = {
   test = local.some_tag
}
