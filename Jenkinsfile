pipeline {
    agent any
    environment {
        registry = "https://ghcr.io"
        registryCredential = "github-seppli11-package-token"
    }

    stages {
        stage('Build Image') {
            steps {
                script {
                    godotImage = docker.build("seppli11/python-for-burndown-chart-docker", ".")
                }
            }
        }
        stage('Deploy Image') {
            steps {
                script {
                    docker.withRegistry( registry, registryCredential ) {
                        image.push("latest")
                    }
                }
            }
        }
    }
}
