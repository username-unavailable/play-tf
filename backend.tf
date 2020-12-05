resource "google_storage_bucket" "tf_bucket" {
  name     = "tp-tf-bucket-1"
  location = "US"
}

#terraform {
#  backend "gcs" {
#    bucket  = "tp-tf-bucket-1"
#    prefix  = "terraform/state"
#  }
#}
