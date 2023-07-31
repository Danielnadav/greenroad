resource "kubernetes_ingress_v1" "ingress" {
  metadata {
    labels = {
      app = "ingress-nginx"
    }
    name = "api-ingress"
    namespace = kubernetes_namespace.hello_world_namespace.metadata.0.name
    annotations = {
      "kubernetes.io/ingress.class": "nginx-hello-world-namespace"
    }
  }

  spec {
    rule {
      http {
        path {
          path = "/"
          backend {
            service {
              name = "hello-world-example"
              port {
                number = 3000
              }
            }
          }
        }
      }
    }
  }
}