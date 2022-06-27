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
                echo 'Deploying..'
                bat "docker build -t piped-docker-app:${currentBuild.number} ."
                bat "docker tag piped-docker-app:${currentBuild.number} piped-docker-app:latest"
                bat "docker rm -f bonab-app-${currentBuild.number - 1}"
                bat "docker run -d --name bonab-app-${currentBuild.number} -p 80:3000 piped-docker-app:latest"
                // bat 'start npm start'
            }
        }
    }
}