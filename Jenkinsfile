pipeline {
  agent any
  stages {
     stage('Helm repo add & update') {
      when {
        allOf {
          expression { $action-status == "complated" }
          expression { $action-name  == "GitHub Actions Build and Deploy " }
        }
      }
      steps {
         sh 'echo test'
      }
    }
  }
}
