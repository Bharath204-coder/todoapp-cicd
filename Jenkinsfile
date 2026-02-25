pipeline {
    agent any

    environment {
        IMAGE = "bharathcm/todo-app"
        CONTAINER_NAME = "todo-app"
        APP_PORT = "5000"
    }

    stages {

        stage('Build Image') {
            steps {
                sh 'docker build -t $IMAGE:latest .'
            }
        }

        stage('Login & Push Image') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh '''
                        echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                        docker push $IMAGE:latest
                    '''
                }
            }
        }

    stage('Deploy to Production') {
    steps {
        sh '''
        ssh -i ~/.ssh/prod-key.pem -o StrictHostKeyChecking=no ec2-user@100.54.138.243 "
            docker pull bharathcm/todo-app:latest &&
            docker stop todo-app || true &&
            docker rm todo-app || true &&
            docker run -d -p 80:5000 --name todo-app bharathcm/todo-app:latest
        "
        '''
    }
}
    }
}
