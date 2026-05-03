resource "google_project_iam_binding" "storage_admin" {
  project = var.project_id
  role    = "roles/storage.admin"
  members = var.iam_users
}

resource "google_project_iam_binding" "network_admin" {
  project = var.project_id
  role    = "roles/compute.networkAdmin"
  members = var.iam_users
}

