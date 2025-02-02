variable "cluster_name" {
  type = string
  description = "The name of the EKS cluster"
}

variable "kubernetes_api_host" {
  type = string
  description = "The eks kubernetes api host endpoint"
}

variable "cluster_ca_certificate" {
  type = string
  description = "The eks kubernetes cluster_ca_certificate"
}

variable "namespace" {
  type = string
  description = "The kubernetes namespace to deploy into"
  default = "istio-system"
}

variable "cert_common_name" {
  type = string
  description = "The common name for the certificate"
}

variable "cert_dns_name" {
  type = string
  description = "The dns name for the certificate"
}
  
variable "issue_ref_name" {
  default = "letsencrypt-prod-dns01"
}

variable "issue_ref_kind" {
  default = "ClusterIssuer"
}

variable "issue_ref_group" {
  default = "cert-manager.io"
}