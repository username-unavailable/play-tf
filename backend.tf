resource "google_storage_bucket" "tf_bucket" {
  name     = "tp-tf-bucket"
  location = "US"
}

terraform {
  backend "gcs" {
    bucket  = "tp-tf-bucket"
    prefix  = "terraform/state"
  }
}
