resource "kubernetes_namespace_v1" "namespace-creation-block" {
  metadata {
    name = var.wordcloud-namespace
  }
}

resource "kubernetes_deployment_v1" "deployment-creation-block" {
  metadata {
    name      = var.wordcloud-deployment-name
    namespace = var.wordcloud-namespace
  }

  spec {
    selector {
      match_labels = { wc-container = "word-cloud-container" }
    }
    template {
      metadata {
        labels = { wc-container = "word-cloud-container" }
      }
      spec {
        container {
          name  = var.wordcloud-container-name
          image = var.wordcloud-image
          port {
            container_port = var.wordcloud-container-port
          }
        }
      }
    }
  }
}

resource "kubernetes_service_v1" "service-creation-block" {
  metadata {
    name      = var.wordcloud-serivce-name
    namespace = var.wordcloud-namespace

  }
  spec {
    # type     = "LoadBalancer"
    selector = { wc-container = "word-cloud-container" }
    port {
      target_port = var.wordcloud-container-port
      port        = var.wordcloud-service-port
    }
  }
}

resource "kubernetes_ingress_v1" "ingress-creation-block" {
  metadata {
    name      = var.wordcloud-ingress-name
    namespace = var.wordcloud-namespace
    labels    = { wcg-ingress = "ingress" }
  }
  spec {
    rule {
      host = var.wordcloud-hostname
      http {
        path {
          path_type = "Prefix"
          path      = "/"
          backend {
            service {
              name = var.wordcloud-serivce-name
              port {
                number = var.wordcloud-container-port
              }
            }
          }
        }
      }
    }
  }
}
