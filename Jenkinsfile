pipeline {
  agent any
  stages {
     stage('Helm repo add & update') {
      when {
        allOf {
          expression { $actionstatus == "complated" }
          expression { $actionname  == "GitHub Actions Build and Deploy " }
        }
      }
      steps {
         sh 'echo $actionstatus'
         sh 'echo $actionname'
      }
    }
  }
}
