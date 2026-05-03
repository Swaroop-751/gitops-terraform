data "google_iam_policy" "project" {

  binding {
    role    = "roles/storage.admin"
    members = var.iam_users
  }

  binding {
    role    = "roles/cloudsql.admin"
    members = var.iam_users
  }

  binding {
    role    = "roles/cloudsql.client"
    members = var.iam_users
  }

  binding {
    role    = "roles/iam.roleAdmin"
    members = var.iam_users
  }

  binding {
    role    = "roles/resourcemanager.projectIamAdmin"
    members = var.iam_users
  }
}

resource "google_project_iam_policy" "project" {
  project     = var.project_id
  policy_data = data.google_iam_policy.project.policy_data
}