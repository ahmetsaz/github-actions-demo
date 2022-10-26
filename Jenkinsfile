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

       steps {
          script {
              if (env.BRANCH == 'master') {
                  env.IMAGETAG="production-${COMMITID}"
              } else {
                  env.IMAGETAG="feature-${COMMITID}"
              }
          }
        }

      steps {
           sh 'echo $IMAGETAG'
      }
   }
  }
}
