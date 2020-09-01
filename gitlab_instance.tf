resource "google_compute_instance" "gitlab" {
  name         = "gitlab"
  machine_type = "n1-standard-1"

  metadata = {
    type = "test"
  }

  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.gitlab_static.address
    }
  }

  boot_disk {
    initialize_params {
      size  = "20"
      type  = "pd-standard"
      image = "debian-cloud/debian-10"
    }
  }
}
