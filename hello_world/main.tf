resource "kubernetes_namespace" "hello_world_namespace" {
  metadata {
    labels = {
      app = "hello-world-example"
    }
    name = "hello-world-namespace"
  }
}

resource "kubernetes_deployment" "hello_world_deployment" {
  metadata {
    name = "kubernetes-example-deployment"
    namespace = kubernetes_namespace.hello_world_namespace.metadata.0.name
    labels = {
      app = "hello-world-example"
    }
  }

  spec {
    replicas = 8
    selector {
      match_labels = {
        app = "hello-world-example"
      }
    }
    template {
      metadata {
        labels = {
          app = "hello-world-example"
        }
      }
      spec {
        container {
          image = "registry.gitlab.com/architect-io/artifacts/nodejs-hello-world:latest"
          name  = "hello-world"
        }
      }
    }
  }
}