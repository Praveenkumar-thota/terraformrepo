# Launch a VM 
resource "google_compute_instance" "instances" {
  count        = "${var.counts}"
  name         = "${var.instance_name}-${count.index + 1 }"
  zone         = "${var.zone}"
  project      = "${var.project}"  
  machine_type = "${var.machine_type}"
  
  

  boot_disk {
    initialize_params {
      image = "${var.disk_image}"
      size = "${var.disk_size}"
      type = "${var.disk_type}"
    }
  }

  
  network_interface {
    
    subnetwork         = "${var.subnetwork}"
    subnetwork_project = "${var.project}"  

    /*access_config {
      # Include this section to give the VM an external ip address
    } */

    
  }
  // Apply the firewall rule to allow external IPs to access this instance, change to variable
  tags = "${var.tags}"
}
