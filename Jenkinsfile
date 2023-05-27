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
    }
}