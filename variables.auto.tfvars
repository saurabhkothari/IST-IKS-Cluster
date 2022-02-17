#apikey=""
#secretkey="../Secretkey.txt"
iksclustername="saukotha-cluster02"
num-control-nodes=1
num-worker-nodes=2
num-load-balancer=5
num-worker-nodes-max=5
ssh_user="iksadmin"
#ssh_key=""
ip_pool-name="iks-ippool"
sysconfig-policy-name="iks-sysConfig_network"
k8s_network-name="iks-sysConfig_pod"
k8s_version-policy-name="iks-version"
k8s_version-version-name="1.20.14-iks.0"
k8s_infra-policyName="iks-infraConfig"
k8s_worker-policyName="iks-k8s-vm-instance"
organization="default"
tags = [
  {
    "key" : "managed_by"
    "value" : "IST"
  },
  {
    "key" : "owner"
    "value" : "saukotha"
  }
]
