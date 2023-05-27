pipeline {
    agent any

    stages {
        stage('Terraform init') {
            steps {
                dir('terraform'){
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform plan') {
            when { expression { params.ExecuteAction == 'build'}}
            steps {
                dir('terraform') {
                    sh 'terraform plan'
                }
            }
        }
        stage('Terraform apply') {
          when { expression { params.ExecuteAction == 'build'}}
            steps {
                dir('terraform') {
                    sh 'terraform apply --auto-approve'
                }
            }
        }
    }
}

