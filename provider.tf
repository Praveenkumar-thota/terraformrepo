provider "google" {
  credentials = "${file("./creds/serviceaccount.json")}"
  project     = "myprojectID"
  region      = "us-west1"
}
