pipeline {
  agent any
  environment {
    ACTION_STATUS = "${actionstatus}"
    ACTION_NAME = "${actionname}"
    IMAGE_TAG = ""
    COMMITID = sh (script: """git rev-parse --short ${commitid}""", returnStdout:true)
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
    stage('test3') {
        when {
        allOf {
            expression { env.ACTION_STATUS == "completed" }
            expression { env.ACTION_NAME  == "GitHub Actions Build and Deploy Demo" }
          }
        }
          steps {
              script {
                  if (env.BRANCH_NAME == 'master') {
                      env.IMAGETAG="production-${COMMITID}"
                  } else {
                      env.IMAGETAG="feature-${COMMITID}"
                  }
              }
          }
      }

     stage('echo') {
      when {
        allOf {
          expression { env.ACTION_STATUS == "completed" }
          expression { env.ACTION_NAME  == "GitHub Actions Build and Deploy Demo" }
        }
      }
       
      steps {
         sh 'echo $IMAGETAG'
      }
    }
  }
}
