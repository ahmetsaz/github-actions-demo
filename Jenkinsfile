pipeline {
  agent any
  environment {
    ACTION_STATUS = "${actionstatus}"
    ACTION_NAME = "${actionname}"
  }
  stages {
     stage('Helm repo add & update') {
      when {
        allOf {
          expression { env.ACTION_STATUS == "completed" }
          expression { env.ACTION_NAME  == "GitHub Actions Build and Deploy Demo" }
        }
      }
      steps {
         sh 'echo $actionstatus'
         sh 'echo $actionname'
      }
    }
  }
}
