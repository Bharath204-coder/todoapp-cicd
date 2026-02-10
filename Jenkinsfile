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

        stage('Deploy Container') {
            steps {
                sh '''
                    docker pull $IMAGE:latest || true

                    docker stop $CONTAINER_NAME || true
                    docker rm $CONTAINER_NAME || true

                    docker run -d \
                      -p $APP_PORT:$APP_PORT \
                      --name $CONTAINER_NAME \
                      $IMAGE:latest
                '''
            }
        }
    }
}
