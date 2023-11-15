    pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                cd db
                docker build -t mcmuds/task2-db .
                cd ../flask-app
                docker build -t mcmuds/task2-app .
                cd ../nginx
                docker build -t mcmuds/task2-proxy .
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
                docker stop mysql && echo "stopped mysql container" || true && echo "No mysql running"              
                docker stop flask-app && echo "stopped flask-app container" || true && echo "No flask-app running"
                docker stop proxy && echo "stopped proxy container" || true && echo "No proxy running"
                docker rm mysql && echo "removed mysql container" || true && echo "No mysql exists"              
                docker rm flask-app && echo "removed flask-app container" || true && echo "No flask-app exists"
                docker rm proxy && echo "removed proxy container" || true && echo "No proxy exists"
                docker run -d --name mysql --network task2-network -e MYSQL_ROOT_PASSWORD=P455w0rd mcmuds/task2-db
                docker run -d --name flask-app --network task2-network -e MYSQL_ROOT_PASSWORD=P455w0rd mcmuds/task2-app
                docker run -d --name proxy --network task2-network -p 80:80 mcmuds/task2-proxy
                
                '''
            }

        }

    }

}