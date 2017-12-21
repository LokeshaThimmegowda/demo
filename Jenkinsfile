pipeline {
    agent any

    tools {
        gradle 'GRADLE4.4'
    }

    stages {
        stage ("Checkout") {
            steps {
               git 'https://github.com/LokeshaThimmegowda/demo.git'
            }
        }

        stage('Build') {
            steps {
                sh './gradlew clean build'
            }
        }

        stage('Test') {
            steps {
                sh './gradlew test'
                junit '**/build/test-results/Test-*.xml'
            }
        }

        stage('Deploy') {
            steps {
                sh './gradlew bootRun'
            }
        }
    }
}