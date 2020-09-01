resource "google_compute_address" "gitlab_static" {
  name = "gitlab-static-ipv4"
}

resource "google_compute_firewall" "allow-web" {
  name    = "allow-web"
  network = "default"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "443", "8080", "1000-2000"]
  }

  source_ranges = ["0.0.0.0/0"]
}
