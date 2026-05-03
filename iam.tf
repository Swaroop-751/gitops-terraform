resource "google_project_iam_members" "storage_admin" {
  project = var.project_id
  role    = "roles/storage.admin"
  members = var.iam_users
}

resource "google_project_iam_members" "network_admin" {
  project = var.project_id
  role    = "roles/compute.networkAdmin"
  members = var.iam_users
}

