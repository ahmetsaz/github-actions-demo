pipeline {
  agent any
  stages {
     stage('Helm repo add & update') {
      steps {
          git branch: 'master',
              credentialsId: 'github-repo-token',
              url: 'https://github.com/ahmetsaz/helm-nexus-pipeline.git'
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
