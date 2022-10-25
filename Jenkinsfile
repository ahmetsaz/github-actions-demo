pipeline {
  agent any
  stages {
     stage('Helm repo add & update') {
      steps {
           checkout([
            $class: 'GitSCM', 
            branches: [[name: '*/master']], 
            doGenerateSubmoduleConfigurations: false, 
            extensions: [[$class: 'CleanCheckout']], 
            submoduleCfg: [], 
            userRemoteConfigs: [[credentialsId: 'github-repo-token', url: 'https://github.com/ahmetsaz/helm-nexus-pipeline.git']]
          ])
        
        sh 'ls helm-nexus-pipeline'
        sh 'cd helm-nexus-pipeline'
        sh 'cat values-test.yaml'
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
