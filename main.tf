provider "intersight" {
  apikey    = var.apikey
  secretkey = var.secretkey
  endpoint  = var.endpoint
}
terraform {
  required_providers {
    intersight = {
      source = "CiscoDevNet/intersight"
      version = "1.0.22"
    }
  }
}
module "terraform-intersight-iks" {

  source  = "terraform-cisco-modules/iks/intersight"
  version = "2.2"

# Kubernetes Cluster Profile  Adjust the values as needed.
  cluster = {
    name                = var.iksclustername
    action              = "Deploy"
    wait_for_completion = false
    worker_nodes        = var.num-worker-nodes
    load_balancers      = var.num-load-balancer
    worker_max          = var.num-worker-nodes-max
    control_nodes       = var.num-control-nodes
    ssh_user            = var.ssh_user
    ssh_public_key      = var.ssh_key
  }


# IP Pool Information (To create new change "use_existing" to 'false' uncomment variables and modify them to meet your needs.)
  ip_pool = {
    use_existing        = true
    name                = var.ip_pool-name
  }

# Sysconfig Policy (UI Reference NODE OS Configuration) (To create new change "use_existing" to 'false' uncomment variables and modify them to meet your needs.)
  sysconfig = {
    use_existing = true
    name         = var.sysconfig-policy-name
  }

# Kubernetes Network CIDR (To create new change "use_existing" to 'false' uncomment variables and modify them to meet your needs.)
  k8s_network = {
    use_existing = true
    name         = var.k8s_network-name

  }
# Version policy (To create new change "useExisting" to 'false' uncomment variables and modify them to meet your needs.)
  versionPolicy = {
    useExisting = true
    policyName     = var.k8s_version-policy-name
    iksVersionName = var.k8s_version-version-name #"1.20.14-iks.0"
  }
# Trusted Registry Policy (To create new change "use_existing" to 'false' and set "create_new' to 'true' uncomment variables and modify them to meet your needs.)
# Set both variables to 'false' if this policy is not needed.
  tr_policy = {
    use_existing = false
    create_new   = false
  }
# Runtime Policy (To create new change "use_existing" to 'false' and set "create_new' to 'true' uncomment variables and modify them to meet your needs.)
# Set both variables to 'false' if this policy is not needed.
  runtime_policy = {
    use_existing = false
    create_new   = false
  }

# Infrastructure Configuration Policy (To create new change "use_existing" to 'false' and uncomment variables and modify them to meet your needs.)
  infraConfigPolicy = {
    use_existing = true
    policyName   = var.k8s_infra-policyName
    
  }

# Addon Profile and Policies (To create new change "createNew" to 'true' and uncomment variables and modify them to meet your needs.)
# This is an Optional item.  Comment or remove to not use.  Multiple addons can be configured.


# Worker Node Instance Type (To create new change "use_existing" to 'false' and uncomment variables and modify them to meet your needs.)
  instance_type = {
    use_existing = true
    name         = var.k8s_worker-policyName
  }

# Organization and Tag Information
  organization = var.organization
  tags         = var.tags
}
