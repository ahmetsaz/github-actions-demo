pipeline {
  agent any
  environment {
    ACTION_STATUS = "${actionstatus}"
    ACTION_NAME = "${actionname}"
    IMAGE_TAG = ""
    COMMITID = sh (script: """git rev-parse --short ${commitid}""", returnStdout:true)
    BRANCH="${branchname}"
  }
  stages {
     stage('Helm repo add & update') {
      steps {
         sh 'echo $actionstatus'
         sh 'echo $actionname'
      }
    }
    stage('test3') {
          steps {
              script {
                  if (env.BRANCH == 'master') {
                      env.IMAGETAG="production-${COMMITID}"
                  } else {
                      env.IMAGETAG="feature-${COMMITID}"
                  }
              }
          }
      }

     stage('echo') {       
      steps {
         sh 'echo $IMAGETAG'
      }
    }
  }
}
