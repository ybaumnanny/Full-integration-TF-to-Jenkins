output "bucket_name" {
  value = google_storage_bucket.bucket.name
  }
  output "vpc_name"{
    value = google_compute_network.vpc.name
  }
    output "subnet_name"{
    value = google_compute_network.subnet.name
  }
  output "fw_name" {
    value = google_compute_firewall.firewall.name
  }
  output "vm_name" {
    value=google_compute_instance.vm.name
  }
  output "subnet_cidr"{
    value = google_compute_subnetwork.subnetwork.ip_cidr_range
  }
  output "external_ip" {
    value = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
  }
  
