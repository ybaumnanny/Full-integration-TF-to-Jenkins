pipeline {
    agent any

    stages {
        stage('Initialization') {
            steps {
                sh "terraform init"
            }
        }
        stage('Format correction') {
            steps {
                sh "terraform fmt"
            }
        }
        stage('Validation') {
            steps {
                sh "terraform validate"
            }
        }
        stage('Plan') {
            steps {
                sh "terraform plan"
            }
        }
        stage('Apply') {
            steps {
                sh "terraform apply -auto-approve"
            }
        }

    }
}
