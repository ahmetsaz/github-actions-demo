pipeline {
  agent any
  stages {
    
     stage('Helm repo add & update') {
      steps {
         sh 'echo test'
      }
    }
    stage('Deploy Staging') {
      steps {
        sh 'ls -lart'
        sh 'cat values-test.yaml'
        sh 'ls helm-pipeline'
        sh 'ls -la' 
     }
   }
  }
}
