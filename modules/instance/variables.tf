variable "zone" {
  description = "machine type."
  default     = "us-west1-b"
}

variable "instance_name" {}
variable "counts" {}
variable "machine_type" {}
variable "project" {}
variable "subnetwork" {}
variable "disk_type" {
  default = "pd-standard"
}

variable "disk_size" {}
variable "disk_image" {}
variable "tags" {
type = "list"
}
