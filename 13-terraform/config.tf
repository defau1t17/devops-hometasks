terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.26.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
  backend "kubernetes" {
    secret_suffix = "state"
    config_path   = "~/.kube/config"
  }
}


provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "github" {
  owner = var.github-owner
  token = var.github-token
}

