pipeline {
    agent any

    stages {
        stage('Clone Ansible Repo') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ansible-runner .'
            }
        }

        stage('Run Ansible Container') {
            steps {
                sh 'docker run --rm ansible-runner'
            }
        }
    }
}