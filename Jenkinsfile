pipeline {
    agent any

    parameters {
     choice{
        name: ExecuteAction
        choices: ['build', 'destroy']}
        description: 'wich action to take'
     
    }

    stages {
        stage('Terraform init') {
            steps {
                dir('terraform') {
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
        stage('Catch terraforms outputs') {
          when { expression { params.ExecuteAction == 'build'}}
          steps {
            dir('terraform') {
                sh './handle_output.sh'
            }
          }  
        }
        stage('Execute Ansible') {
            when { expression { params.ExecuteAction == 'build' }}
            steps {
                dir('ansible') {
                    sh 'ansible-playbook ./playbooks/wordpress.yml'
                }
            }
        }
    }
}

