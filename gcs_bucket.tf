resource "google_storage_bucket" "gcs1" {
    name          = "bucket-for-iac-pipeline-testing"
    storage_class = "STANDARD"
    location      = "us-central1"
  
} #new