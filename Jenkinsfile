    pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                docker build -t mcmuds/task2-db db
                docker build -t mcmuds/task2-app flask-app
                docker build -t mcmuds/task2-proxy nginx
                '''
            }

        }
        stage('Push') {
            steps {
                sh '''
                docker push mcmuds/task2-db
                docker push mcmuds/task2-app
                docker push mcmuds/task2-proxy
                '''         
            }

        }
        stage('Deploy') {
            steps {
                sh '''
                kubectl apply -f .
                kubectl get services
                '''
            }

        }

    }

}