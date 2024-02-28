variable "wordcloud-namespace" {
  description = "Special variable for k8s namespace"
  type        = string
  default     = "wordcloud-namespace"
}

variable "wordcloud-image" {
  description = "Special variable for k8s container image"
  type        = string
  default     = "ghcr.io/defau1t17/wcg:latest"
}

variable "wordcloud-container-name" {
  description = "Special variable for k8s container name"
  type        = string
  default     = "wcg-container"
}

variable "wordcloud-container-port" {
  description = "Special variable for k8s container port"
  type        = number
  default     = 8888
}

variable "wordcloud-service-port" {
  description = "Special variable for k8s service port"
  type        = number
  default     = 80
}

variable "wordcloud-serivce-name" {
  description = "Special variable for k8s serivce name"
  type        = string
  default     = "word-cloud-serivce"
}
variable "wordcloud-deployment-name" {
  description = "Special variable for k8s deployment name"
  type        = string
  default     = "word-cloud-deployment"
}
variable "wordcloud-ingress-name" {
  description = "Special variable for k8s ingress name"
  type        = string
  default     = "word-cloud-ingress"
}

variable "wordcloud-hostname" {
  description = "Special variable for ingress hostname"
  type        = string
  default     = "word-cloud-generator.com"
}