resource "google_project_iam_binding" "storage_admin" {
  project = var.project_id
  role    = "roles/storage.admin"
  members = var.iam_users
}
