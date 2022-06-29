location                        = "westeurope"
resource_group_name             = "playground-aks-calico" # if running with bootstrap.sh, don't forget to change there too.
cluster_name                    = "aks-calico" # if running with bootstrap.sh, don't forget to change there too.
private_cluster_enabled         = false
kubernetes_version              = "1.22.6" # "1.21.9"
node_avzones                    = ["1", "2", "3"]
network_plugin                  = "kubenet"
network_policy                  = "calico"

default_node_pool = {
    name                  = "default"
    orchestrator_version  = "1.22.6"
    vm_size               = "Standard_D2as_v5"
    os_disk_size_gb       = null
    os_disk_type          = null
    node_count            = 1
    enable_auto_scaling   = false
    min_count             = null
    max_count             = null
    max_pods              = null
    enable_public_ip      = false
    ultra_ssd_enabled     = false
    labels                = {}
    taints                = []
}

custom_nodepools = []