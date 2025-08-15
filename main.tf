module "kubernetes" {
  source  = "hcloud-k8s/kubernetes/hcloud"
  version = "2.7.0"
  cluster_name = "barra_playground"
  token = var.api_token
  control_plane_nodepools = [
    { name = "control", type = "cpx21", location = "fsn1", count = 3 }
  ]
  worker_nodepools = [
    { name = "worker", type = "cpx11", location = "fsn1", count = 3 }
  ]
  ]
}