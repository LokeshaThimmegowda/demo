pipeline {

    agent { dockerfile true }

    stages {
        stage('Building the application') {
            steps {
                sh 'docker build -t lokesha/demo .'
            }
        }

        stage('Running the application') {
            steps {
                sh 'docker run \
                        -u root \
                        --rm \
                        -d \
                        -p 8082:8082 \
                        lokesha/demo'
            }
        }
    }
}