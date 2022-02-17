
iksclustername="saukotha-IST-IKS"
num-control-nodes=1
num-worker-nodes=1
num-load-balancer=5
num-worker-nodes-max=5
ssh_user="iksadmin"
ssh_key="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFhRrrW7fmlR6h0xfwDEdivTMl0oA783YEfwlMWl34cB iksadmin"
ip_pool-name="iks-ippool"
sysconfig-policy-name="iks-sysConfig_network"
k8s_network-name="iks-sysConfig_pod"
k8s_version-policy-name="iks-version"
k8s_version-version-name="1.20.14-iks.0"
k8s_infra-policyName="iks-infraConfig"
k8s_worker-policyName="iks-k8s-vm-instance"
organzation="default"
tags=[
        {
            "key": "deployedUsing"
            "value": "IST"
        }
    ]
