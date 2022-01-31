pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('DOCKERHUB_CREDENTIALS')
  }
  stages {
    stage('Setup') {
      steps {
        sh 'chmod +x ./scripts/*'
      }
    }
    stage('Clean') {
      steps {
        sh './scripts/clean.sh'
      }
    }
    stage('Build') {
      steps {
        sh './scripts/build.sh'
      }
    }
    stage('Login') {
      steps {
        sh './scripts/login.sh'
      }
    }
    stage('Push') {
      steps {
        sh './scripts/push.sh'
      }
    }
    stage('Test'){
      steps {
        sh './scripts/test_run.sh'
      }
    }
    stage('Logout') {
      steps {
        sh './scripts/logout.sh'
      }
    }
  }
}
