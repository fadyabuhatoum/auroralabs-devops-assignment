pipeline {
    agent any
    stages {
        stage ('Docker Build') {
            steps {
                sh "docker build -t fadyabuhatoum/devops-is-great-aurora-labs ."
            }
        }

        stage ('Docker login') {
            steps {
                sh 'docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD'
            }
        }

        stage ('Docker push') {
            steps {
                sh "docker push fadyabuhatoum/devops-is-great-aurora-labs"
                // sh "docker stop devops-is-great ; docker rm devops-is-great"
                sleep 5
            }
        }

        stage ('Docker Run') {
            steps {
                sh "docker run fadyabuhatoum/devops-is-great-aurora-labs --name devops-is-great"
            }
        }
    }
}