locals {
  some_tag = "unknown"
  external_tpl_path    = find_in_parent_folders("external.tf.tpl")
}

generate "providers" {
  path      = "generated_providers.tf"
  if_exists = "overwrite"
  contents = <<EOF
${templatefile(local.external_tpl_path, local)}
EOF
}

inputs = {
  test = local.some_tag
}
