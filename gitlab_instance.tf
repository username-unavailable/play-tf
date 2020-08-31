resource "google_compute_instance" "gitlab" {
  name         = "gitlab"
  machine_type = "n1-standard-1"

  metadata = {
    type = "test"
  }

  network_interface {
    network = "default"
    access_config{}
  }

  boot_disk {
    initialize_params {
      size  = "20"
      type  = "pd-standard"
      image = "debian-cloud/debian-10"
    }
  }
}
