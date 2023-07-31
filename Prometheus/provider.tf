# For authentication, the Helm provider can get its configuration by supplying a path to your kubeconfig file.
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

# Used to interact with the resources supported by Kubernetes.

provider "kubernetes" {
  config_path = pathexpand(var.kube_config)
}