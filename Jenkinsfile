pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'chinnmayk/new'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/chinnmayK/cicd.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat "docker build -t %DOCKER_IMAGE%:latest ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                   bat "docker run -d -p 8888:80 --name my-container %DOCKER_IMAGE%:latest"

                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution finished.'
        }
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check logs.'
        }
    }
}
