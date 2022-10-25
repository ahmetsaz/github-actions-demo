pipeline {
  agent any
  stages {
     stage('Helm repo add & update') {
      steps {
         sh 'ls'
      }
    }
    stage('Deploy Staging') {
      steps {
        sh 'ls helm-nexus-pipeline'
        sh 'cd helm-nexus-pipeline'
        sh 'cat values-test.yaml'
     }
   }
  }
}
