provider "helm" {
  kubernetes {
    config_path = "k3s.yaml"
    
  }
}
provider "kubernetes" {
  config_path    = "k3s.yaml"
}
resource "helm_release" "loki" {
  name       = "loki"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "loki"
  version    = "5.10.0"
  namespace  = "loki"
}
