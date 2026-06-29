terraform {
    backend "gcs"{
        bucket = " tf-bucket-with-terraform-vscode-github-jenkins"
        prefix = "terraform/state"
    }
}