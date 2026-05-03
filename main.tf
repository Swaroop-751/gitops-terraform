terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.30.0"
    }
  }

  backend "gcs" {
  bucket = "tf-backend-bucket-01"
  prefix = "terraform/state"
  }
}

provider "google" {
  project = "project-07b2981c-18fb-4fa4-acd"
  region  = "us-central1"
  zone = "us-central1-a"
}


