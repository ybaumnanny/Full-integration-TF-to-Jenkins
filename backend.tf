terraform {
    backend "gcs"{
        bucket = " tf_backend_state_gcp"
        prefix = "terraform/state"
    }
}