output "kube_config" {
  value = azurerm_kubernetes_cluster.aks-volvo.kube_config_raw
}
