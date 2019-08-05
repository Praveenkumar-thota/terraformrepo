# THIS IS THE MAIN MODULE 

#To create an instance, must change the instance name
module "instances" {
  source = "./modules/instance"
  
instance_name = "myinstancename"
counts = "1"
zone = "us-east1-b"
project = "my-new-project-239511"
machine_type = "f1-micro"
disk_image = "debian-cloud/debian-9"
disk_size = "10"
disk_type = "pd-standard"
subnetwork = "default"
tags = ["http-server","https"]


} 

#To create a firewall rule, must change protocal, ports, targettag, name 
/* 
module "firewall" {
  source        = "./firewall"

  protocol      = "tcp"
  ports         = ["22"]
  source_ranges = ["0.0.0.0/0"]
  targettag = "ssh22allow"
  name          = "allow-ssh"
  #network       = "${data.google_compute_network.test-vpc.name}"
  network       = "default"
  
}
*/



#TO CREATE A PROJECT 
/*
module "project" {
  source        = "./project"

project_name = "myprojectname"
}
*/

