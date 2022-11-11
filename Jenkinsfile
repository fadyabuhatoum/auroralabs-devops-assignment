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
                sh "docker stop devops-is-great || echo 'already stopped' ; docker rm devops-is-great || echo 'already deleted' "
                sleep 10 // in order to stop and remove it . 
            }
        }

        stage ('Docker Run') {
            steps {
                sh "docker pull fadyabuhatoum/devops-is-great-aurora-labs"
                sh "docker run --name devops-is-great fadyabuhatoum/devops-is-great-aurora-labs"
            }
        }
    }
}