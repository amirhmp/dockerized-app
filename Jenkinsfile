pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                // bat 'npm install'
                // bat 'npm run build'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                bat 'docker build -t piped-docker-app .'
                bat 'docker run piped-docker-app'
                // bat 'start npm start'
            }
        }
    }
}