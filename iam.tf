resource "google_project_iam_member" "storage_admin" {
  for_each = toset(var.iam_users)
  project  = var.project_id
  role     = "roles/storage.admin"
  member   = each.value
}

resource "google_project_iam_member" "network_admin" {
  for_each = toset(var.iam_users)
  project  = var.project_id
  role     = "roles/compute.networkAdmin"
  member   = each.value
}

resource "google_project_iam_member" "project_iam_admin" {
  for_each = toset(var.iam_users)
  project  = var.project_id
  role     = "roles/resourcemanager.projectIamAdmin"
  member   = each.value
}