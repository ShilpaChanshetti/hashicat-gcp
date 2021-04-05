module "network" {
  source  = "app.terraform.io/SHILPA-training/network/google"
  version = "2.5.0"
  network_name = "shilpa-network"
  project_id = var.project
  subnets = [
  {
    subnet_name   = "shilpa-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}