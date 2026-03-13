variable "project" {

  description = "Project"
  default     = "project-4d2a09e2-20ac-4fb5-887"
}

variable "location" {

  description = "Project Location"
  default     = "EU"
}


variable "bq_dataset_name" {

  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {

  description = "My Stprage Bucket Name"
  default     = "terraform-demo-3971221992-terra-bucket"
}

variable "gcs_storage_class" {

  description = "Bucker Storage Class"
  default     = "STANDARD"
}