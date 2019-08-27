variable "network" {}
variable "priority" {}
variable source_ranges {
  description = "A list of source CIDR ranges that this firewall applies to. Can't be used for EGRESS"
  type        = "list"
}
variable ports {
  description = "List of ports and/or port ranges to allow. This can only be specified if the protocol is TCP or UDP"
  type        = "list"
}

variable "protocol" {}
variable "name" {}
variable "project" {}

variable "target_tags" {
  type = "list"
}