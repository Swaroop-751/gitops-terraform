resource "google_compute_network" "custom-vpc" {
  name                    = "custom-vpc-for-iac"
  auto_create_subnetworks = false
  description             = "VPC for IaC pipeline testing"
  routing_mode            = "REGIONAL"
  
}