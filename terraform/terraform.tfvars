location            = "newzealandnorth"
resource_group_name = "sit722-week08-rg"

# Replace with a unique name for your Azure Container Registry 
acr_name             = "atishayacrweek08"

# Replace with a unique name for your Azure Storage Account
storage_account_name = "atishaystorage08"

# Replace with a unique name for your Azure Kubernetes Service cluster
aks_cluster_name = "sit722-week08-aks"
aks_dns_prefix   = "sit722week08"

aks_node_count   = 3
aks_node_vm_size = "Standard_B2s_v2"

environment = "development"

tags = {
    Project    = "KoalaTech Course Platform"
    ManagedBy  = "Terraform"
    Practical  = "Week08"
    Environment = "Development"
}