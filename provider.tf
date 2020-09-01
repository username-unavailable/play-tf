provider "google" {
  credentials = file(var.credentials_file)
  project     = "testicular-prancer"
  region      = "us-central1"
  zone        = "us-central1-b"
}
