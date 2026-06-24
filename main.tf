#Bucket
resource "google_storage_bucket" "bucket" {
  name = var.bucket_name
  location = var.region

  uniform_bucket_level_access = true
}

#VPC
resource "google_compute_network" "vpc" {
  name = var.vpc_name
  auto_create_subnetworks = false
}

#Subnet
resource "google_compute_subnetwork" "subnetwork" {
  name = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region = var.region
  network = google_compute_network.vpc.id
}

#Firewall
resource "google_compute_firewall" "firewall" {
  name = var.fw_name
  network = google_compute_network.vpc.id

  allow {
    protocol = "tcp"
    ports = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

#Virtual Machine
resource "google_compute_instance" "vm" {
  name = var.vm_name
  machine_type = var.machine_type
  zone = var.zone

  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnetwork.id
    access_config {}
  }
 }
