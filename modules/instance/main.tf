#Launch a compute engine instance

#Data sources
/*data "google_compute_zones" "available" {
}

*/

#create instances
resource "google_compute_instance" "compute_instance" {
  provider = google
  count        = var.counts
  name         = "${var.instance_name}-${count.index + 1 }"
  #zone     = data.google_compute_zones.available.names[count.index % length(data.google_compute_zones.available.names)]
  zone         = var.zone
  project      = var.project  
  machine_type = var.machine_type
  
    boot_disk {
    initialize_params {
      image = var.disk_image
      size = var.disk_size
      type = var.disk_type
    }
  }
  
  metadata_startup_script = file("./startup_scripts/startup_apache.sh")

  network_interface {
    
    subnetwork         = var.subnetwork
    subnetwork_project = var.project  

   access_config {
      # Include this section to give the VM an external ip address
    } 

    
  }
  tags = var.tags
}

