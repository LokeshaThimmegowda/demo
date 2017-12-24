node {

  def gradleContainer

  stage('Clone repository') {
    checkout scm
  }

  stage('Get docker image') {
    gradleContainer = docker.image('gradle:jdk8-alpine')
    gradleContainer.pull()
  }
  
  stage('Test application') {
     gradleContainer.inside("-v ${env.HOME}/.gradle:/home/gradle/.gradle") {
       sh './gradlew test'
     }
  }
  
  stage('Push image') {
     gradleContainer.inside("-v ${env.HOME}/.gradle:/home/gradle/.gradle") {
       sh './gradlew bootRun'
     }
  }
}