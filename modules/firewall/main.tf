resource "google_compute_firewall" "firewall" {
  name          = var.name
  network       = var.network
  project       = var.project
  direction     = "INGRESS"
  priority      = var.priority #default 1000
  source_ranges = var.source_ranges

  allow {
    protocol = var.protocol
    #ports    = ["80", "8080", "1000-2000"]
    ports = var.ports
  }

  target_tags = var.target_tags
}