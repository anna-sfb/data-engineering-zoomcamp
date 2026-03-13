terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.23.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = "europe-west1"

  impersonate_service_account = "terraform-runner@project-4d2a09e2-20ac-4fb5-887.iam.gserviceaccount.com"
}

resource "google_storage_bucket" "demo-bucket" {
  name                        = var.gcs_bucket_name
  location                    = var.location
  uniform_bucket_level_access = true
  force_destroy               = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "demo_dataset" {
  dataset_id = var.bq_dataset_name
  location = var.location
}