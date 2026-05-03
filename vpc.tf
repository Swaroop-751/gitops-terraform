resource "google_compute_network" "custom-vpc" {
  name                    = "custom-vpc-for-iac"
  auto_create_subnetworks = false
  description             = "VPC for IaC pipeline testing"
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "sub-sg" {
  name          = "subnet-for-iac"
  network       = google_compute_network.custom-vpc.id
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
}

resource "google_compute_firewall" "fw-sg" {
  name    = "fw-for-iac"
  network = google_compute_network.custom-vpc.id

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}