resource "google_project_iam_binding" "veeam-default-binding" {
  role = google_project_iam_custom_role.veeam-default.id
  members = [
    "serviceAccount:${google_service_account.veeam-backup.email}"
  ]
}

resource "google_project_iam_binding" "veeam-backup-binding" {
  role = google_project_iam_custom_role.veeam-backup.id
  members = [
    "serviceAccount:${google_service_account.veeam-backup.email}"
  ]
}

resource "google_project_iam_binding" "veeam-snapshot-binding" {
  role = google_project_iam_custom_role.veeam-snapshot.id
  members = [
    "serviceAccount:${google_service_account.veeam-backup.email}"
  ]
}

resource "google_project_iam_binding" "veeam-repository-binding" {
  role = google_project_iam_custom_role.veeam-repository.id
  members = [
    "serviceAccount:${google_service_account.veeam-backup.email}"
  ]
}

resource "google_project_iam_binding" "veeam-restore-binding" {
  role = google_project_iam_custom_role.veeam-restore.id
  members = [
    "serviceAccount:${google_service_account.veeam-backup.email}"
  ]
}

resource "google_project_iam_binding" "veeam-worker-binding" {
  role = google_project_iam_custom_role.veeam-worker.id
  members = [
    "serviceAccount:${google_service_account.veeam-backup.email}"
  ]
}

resource "google_project_iam_binding" "veeam-appliance-binding" {
  role = "roles/iam.serviceAccountTokenCreator"
  members = [
    "serviceAccount:${var.veeam_appliance_service_account}"
  ]
}